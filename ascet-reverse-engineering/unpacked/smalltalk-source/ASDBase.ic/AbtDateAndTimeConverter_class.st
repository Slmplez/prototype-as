"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000ab8; bytecode file offset 0x8ffcfc"
!AbtDateAndTimeConverter class methodsFor: 'recovered'!
_PRAGMA_IS_
    ^self
! !

"ASDBase.ic method 0x20013200; bytecode file offset 0x912098"
!AbtDateAndTimeConverter class methodsFor: 'recovered'!
displayName
    | recoveredValue0 |
    recoveredValue0 := AbtCvtrNameDateAndTime.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015744; bytecode file offset 0x912098"
!AbtDateAndTimeConverter class methodsFor: 'recovered'!
objectClass
    | recoveredValue0 |
    recoveredValue0 := DateAndTime.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003d008; bytecode file offset 0x93bf94"
!AbtDateAndTimeConverter class methodsFor: 'recovered'!
defaultObjectFromEmptyString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DateAndTime.
    recoveredValue1 := (recoveredValue0) now.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074b8c; bytecode file offset 0x9757c8"
!AbtDateAndTimeConverter class methodsFor: 'recovered'!
emptyMakesDefault
    ^true
! !

"ASDBase.ic method 0x2017e6f4; bytecode file offset 0xa7afb4"
!AbtDateAndTimeConverter class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_instanceInterfaceSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_instanceInterfaceSpec.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtInterfaceSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            IS_instanceInterfaceSpec := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018cbf8; bytecode file offset 0xa89944"
!AbtDateAndTimeConverter class methodsFor: 'recovered'!
abtPrimFlushInterfaceSpecCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_AbtDateAndTimeConverter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d0d88Arg1 | 
    | block280d0d88Value0 block280d0d88Value1 |
    block280d0d88Value0 := block280d0d88Arg1.
    block280d0d88Value1 := (block280d0d88Value0) value: (nil).
    block280d0d88Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            super abtPrimFlushInterfaceSpecCache.
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

