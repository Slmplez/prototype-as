"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000618; bytecode file offset 0x619a4"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
sstDeploymentIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) deploymentNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000720; bytecode file offset 0x619a4"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
abtXmlNamespaceMappings
    | recoveredValue0 |
    recoveredValue0 := (self) namespaceMappings.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000370c; bytecode file offset 0x649e8"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
sourceUrl
    | recoveredValue0 |
    recoveredValue0 := sourceUrl.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200039f8; bytecode file offset 0x64bac"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
containerDescriptor
    | recoveredValue0 |
    recoveredValue0 := containerDescriptor.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003b34; bytecode file offset 0x64d78"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
servicesDescriptor
    | recoveredValue0 |
    recoveredValue0 := servicesDescriptor.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003d28; bytecode file offset 0x64ed4"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
targetNamespace
    | recoveredValue0 |
    recoveredValue0 := targetNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003edc; bytecode file offset 0x64fe8"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
namespaceMappings
    | recoveredValue0 |
    recoveredValue0 := namespaceMappings.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003f60; bytecode file offset 0x650c4"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
deploymentNamespace
    | recoveredValue0 |
    recoveredValue0 := deploymentNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004658; bytecode file offset 0x6592c"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
sstIsDeploymentDescriptor
    ^true
! !

"xxx_dyn.ic method 0x20004eb8; bytecode file offset 0x65fa4"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
abtXmlNamespaceMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) namespaceMappings: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20005a10; bytecode file offset 0x66ae0"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
namespaceForQName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtXmlUtility.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) prefixFor: (recoveredValue1).
    recoveredValue3 := (self) uriForPrefix: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000738c; bytecode file offset 0x68458"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
handlerNamed: recoveredArg1 inNamespace: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) handlerFactory.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) handlerNamed: (recoveredValue2) inNamespace: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007d34; bytecode file offset 0x68f50"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
sourceUrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceUrl := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f78; bytecode file offset 0x69104"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
containerDescriptor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    containerDescriptor := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000815c; bytecode file offset 0x692b8"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
servicesDescriptor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    servicesDescriptor := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008218; bytecode file offset 0x69404"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
targetNamespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetNamespace := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200083a4; bytecode file offset 0x69508"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
namespaceMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespaceMappings := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008488; bytecode file offset 0x695c4"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
deploymentNamespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    deploymentNamespace := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000cb0c; bytecode file offset 0x6dbf0"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
uriForPrefix: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) namespaceMappings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespaceMappings.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20010350; bytecode file offset 0x71420"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
serviceNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) servicesDescriptor.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) serviceNamed: (recoveredBlock5Value1) inNamespace: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) ifNotNil: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20011f2c; bytecode file offset 0x73008"
!SstWSDeploymentDescriptor methodsFor: 'recovered'!
declarePrefix: recoveredArg1 uri: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) namespaceMappings: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrAsString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

