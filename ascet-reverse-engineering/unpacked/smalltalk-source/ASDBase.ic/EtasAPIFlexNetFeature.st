"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028274; bytecode file offset 0x934580"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
isInGraceModePeriode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) feature.
    recoveredValue1 := (recoveredValue0) isInGraceModePeriode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029024; bytecode file offset 0x934580"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
isCheckout
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) feature.
    recoveredValue1 := (recoveredValue0) isCheckout.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d604; bytecode file offset 0x934580"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
isSystemDefined
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) feature.
    recoveredValue1 := (recoveredValue0) isSystemDefined.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200310a4; bytecode file offset 0x934580"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
version
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) feature.
    recoveredValue1 := (recoveredValue0) version.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032df4; bytecode file offset 0x934580"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
majorVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) feature.
    recoveredValue1 := (recoveredValue0) majorVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034fe4; bytecode file offset 0x934580"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
minorVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) feature.
    recoveredValue1 := (recoveredValue0) minorVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037dac; bytecode file offset 0x934768"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) feature.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066aa4; bytecode file offset 0x963428"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
feature
    | recoveredValue0 |
    recoveredValue0 := feature.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be604; bytecode file offset 0x9bb178"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
feature: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    feature := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20190ac4; bytecode file offset 0xa8d390"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
checkout
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) feature.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSystemDefined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EtasAPIError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 54.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithErrorCode: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) feature.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) checkout.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCheckout.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a2abc; bytecode file offset 0xa9f388"
!EtasAPIFlexNetFeature methodsFor: 'recovered'!
checkin
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) feature.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSystemDefined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EtasAPIError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 54.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithErrorCode: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) feature.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) checkin.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCheckout.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

