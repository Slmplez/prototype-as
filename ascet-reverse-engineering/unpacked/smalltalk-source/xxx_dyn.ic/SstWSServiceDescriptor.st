"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200038f4; bytecode file offset 0x649e8"
!SstWSServiceDescriptor methodsFor: 'recovered'!
documentation
    | recoveredValue0 |
    recoveredValue0 := documentation.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003988; bytecode file offset 0x64bac"
!SstWSServiceDescriptor methodsFor: 'recovered'!
provider
    | recoveredValue0 |
    recoveredValue0 := provider.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003c24; bytecode file offset 0x64d78"
!SstWSServiceDescriptor methodsFor: 'recovered'!
serviceInterfaceClass
    | recoveredValue0 |
    recoveredValue0 := serviceInterfaceClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003d18; bytecode file offset 0x64ed4"
!SstWSServiceDescriptor methodsFor: 'recovered'!
extensions
    | recoveredValue0 |
    recoveredValue0 := extensions.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003f1c; bytecode file offset 0x64fe8"
!SstWSServiceDescriptor methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003f90; bytecode file offset 0x650c4"
!SstWSServiceDescriptor methodsFor: 'recovered'!
namespace
    | recoveredValue0 |
    recoveredValue0 := namespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200040ac; bytecode file offset 0x65178"
!SstWSServiceDescriptor methodsFor: 'recovered'!
soapEnvelopeNamespace
    | recoveredValue0 |
    recoveredValue0 := soapEnvelopeNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20006638; bytecode file offset 0x67758"
!SstWSServiceDescriptor methodsFor: 'recovered'!
initProvider
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstWSProviderDescriptor.
    recoveredValue1 := (recoveredValue0) new.
    (self) provider: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20007370; bytecode file offset 0x6843c"
!SstWSServiceDescriptor methodsFor: 'recovered'!
addMethodNamed: recoveredArg1 selector: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) provider.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) addMethodNamed: (recoveredValue1) selector: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20007d1c; bytecode file offset 0x68f50"
!SstWSServiceDescriptor methodsFor: 'recovered'!
documentation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    documentation := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f28; bytecode file offset 0x69104"
!SstWSServiceDescriptor methodsFor: 'recovered'!
provider: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    provider := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000808c; bytecode file offset 0x692b8"
!SstWSServiceDescriptor methodsFor: 'recovered'!
serviceInterfaceClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    serviceInterfaceClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008338; bytecode file offset 0x69404"
!SstWSServiceDescriptor methodsFor: 'recovered'!
extensions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    extensions := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008404; bytecode file offset 0x69508"
!SstWSServiceDescriptor methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200084c0; bytecode file offset 0x695c4"
!SstWSServiceDescriptor methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespace := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008514; bytecode file offset 0x69688"
!SstWSServiceDescriptor methodsFor: 'recovered'!
soapEnvelopeNamespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    soapEnvelopeNamespace := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000a204; bytecode file offset 0x6b338"
!SstWSServiceDescriptor methodsFor: 'recovered'!
initializeImplementor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) provider.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2800a4acArg1 | 
    | block2800a4acValue0 block2800a4acValue1 |
    block2800a4acValue0 := block2800a4acArg1.
    block2800a4acValue1 := (block2800a4acValue0) initializeImplementor.
    block2800a4acValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

