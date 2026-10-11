"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012774; bytecode file offset 0x912098"
!SGCodeManager class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200152ac; bytecode file offset 0x912098"
!SGCodeManager class methodsFor: 'recovered'!
ascetMainController
    | recoveredValue0 |
    recoveredValue0 := MainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003e2f8; bytecode file offset 0x93bf94"
!SGCodeManager class methodsFor: 'recovered'!
infoMessages
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) infoMessages.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e708; bytecode file offset 0x93bf94"
!SGCodeManager class methodsFor: 'recovered'!
warningMessages
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) warningMessages.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f318; bytecode file offset 0x93bf94"
!SGCodeManager class methodsFor: 'recovered'!
errorMessages
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) errorMessages.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048bd0; bytecode file offset 0x945728"
!SGCodeManager class methodsFor: 'recovered'!
resetCurrent
    Current := nil.
    ^self
! !

"ASDBase.ic method 0x200528e4; bytecode file offset 0x94f200"
!SGCodeManager class methodsFor: 'recovered'!
createBuilderForClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLogicBuilder.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063924; bytecode file offset 0x961970"
!SGCodeManager class methodsFor: 'recovered'!
shutdown
    | recoveredValue0 |
    recoveredValue0 := (self) create.
    (recoveredValue0) shutdown.
    ^self
! !

"ASDBase.ic method 0x20064124; bytecode file offset 0x961970"
!SGCodeManager class methodsFor: 'recovered'!
startup
    | recoveredValue0 |
    recoveredValue0 := (self) create.
    (recoveredValue0) startup.
    ^self
! !

"ASDBase.ic method 0x200645d4; bytecode file offset 0x961970"
!SGCodeManager class methodsFor: 'recovered'!
resetCaches
    | recoveredValue0 |
    recoveredValue0 := (self) create.
    (recoveredValue0) resetCaches.
    ^self
! !

"ASDBase.ic method 0x20096cf0; bytecode file offset 0x9937fc"
!SGCodeManager class methodsFor: 'recovered'!
createMonitorStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) monitorStream: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b36e0; bytecode file offset 0x9affa0"
!SGCodeManager class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    Current := recoveredValue2.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202c4074; bytecode file offset 0xbc0948"
!SGCodeManager class methodsFor: 'recovered'!
toolDeclarationsMissing
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
            recoveredStack2 := TGCompilerTool.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) instances.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := TGOperatingSystemTool.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) instances.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := TGEHooksTool.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) instances.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := TGTarget.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) availableTargets.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := TGInterpolationRoutineSet.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) instances.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

