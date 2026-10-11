"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000278; bytecode file offset 0x6147c"
!SstEndpoint methodsFor: 'recovered'!
reset
    ^self
! !

"xxx_dyn.ic method 0x20000290; bytecode file offset 0x6147c"
!SstEndpoint methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x200002d8; bytecode file offset 0x6147c"
!SstEndpoint methodsFor: 'recovered'!
basicCleanUp
    ^self
! !

"xxx_dyn.ic method 0x200002f8; bytecode file offset 0x6147c"
!SstEndpoint methodsFor: 'recovered'!
shutDown
    ^self
! !

"xxx_dyn.ic method 0x20000348; bytecode file offset 0x6147c"
!SstEndpoint methodsFor: 'recovered'!
startUp
    ^self
! !

"xxx_dyn.ic method 0x200003d0; bytecode file offset 0x615ac"
!SstEndpoint methodsFor: 'recovered'!
configuration: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000690; bytecode file offset 0x619a4"
!SstEndpoint methodsFor: 'recovered'!
preferredAccessibleUrl
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000950; bytecode file offset 0x61a44"
!SstEndpoint methodsFor: 'recovered'!
hasContacted: recoveredArg1
    ^false
! !

"xxx_dyn.ic method 0x20000970; bytecode file offset 0x61a44"
!SstEndpoint methodsFor: 'recovered'!
isConnectedTo: recoveredArg1
    ^false
! !

"xxx_dyn.ic method 0x2000118c; bytecode file offset 0x626a4"
!SstEndpoint methodsFor: 'recovered'!
sstMetaInformalType
    ^'endpoint'
! !

"xxx_dyn.ic method 0x200014a4; bytecode file offset 0x626a4"
!SstEndpoint methodsFor: 'recovered'!
accessibleUrls
    ^#()
! !

"xxx_dyn.ic method 0x20001588; bytecode file offset 0x626a4"
!SstEndpoint methodsFor: 'recovered'!
sstMetaInformation
    ^#(#('URL' 'asUrlString' nil 'info' 'string'))
! !

"xxx_dyn.ic method 0x20001b2c; bytecode file offset 0x62c08"
!SstEndpoint methodsFor: 'recovered'!
transportIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sstAsUrl.
    recoveredValue1 := (recoveredValue0) transport.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200024fc; bytecode file offset 0x635c4"
!SstEndpoint methodsFor: 'recovered'!
asUrlString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := url.
    recoveredValue1 := (recoveredValue0) printString.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002544; bytecode file offset 0x6363c"
!SstEndpoint methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := address.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002768; bytecode file offset 0x6382c"
!SstEndpoint methodsFor: 'recovered'!
clear
    address := nil.
    ^self
! !

"xxx_dyn.ic method 0x2000376c; bytecode file offset 0x649e8"
!SstEndpoint methodsFor: 'recovered'!
sstAsUrl
    | recoveredValue0 |
    recoveredValue0 := url.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003ae8; bytecode file offset 0x64bac"
!SstEndpoint methodsFor: 'recovered'!
address
    | recoveredValue0 |
    recoveredValue0 := address.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004620; bytecode file offset 0x6592c"
!SstEndpoint methodsFor: 'recovered'!
isStarted
    ^true
! !

"xxx_dyn.ic method 0x20004a04; bytecode file offset 0x65b30"
!SstEndpoint methodsFor: 'recovered'!
isClient
    ^false
! !

"xxx_dyn.ic method 0x20007cfc; bytecode file offset 0x68f50"
!SstEndpoint methodsFor: 'recovered'!
url: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    url := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007ea0; bytecode file offset 0x69104"
!SstEndpoint methodsFor: 'recovered'!
address: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    address := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000cae8; bytecode file offset 0x6dbb4"
!SstEndpoint methodsFor: 'recovered'!
= recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := address.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) address.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000f264; bytecode file offset 0x70334"
!SstEndpoint methodsFor: 'recovered'!
representsSameLocationAs: recoveredArg1
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
            recoveredStack2 := address.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) address.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := url.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) scheme.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) preferredAccessibleUrl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) scheme.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

