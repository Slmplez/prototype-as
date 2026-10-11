"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200006a8; bytecode file offset 0x619a4"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
defaultActionStrategy
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003814; bytecode file offset 0x649e8"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
creationAction
    | recoveredValue0 |
    recoveredValue0 := creationAction.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003a38; bytecode file offset 0x64bac"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
imageComponents
    | recoveredValue0 |
    recoveredValue0 := imageComponents.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003bec; bytecode file offset 0x64d78"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
handlers
    | recoveredValue0 |
    recoveredValue0 := handlers.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e00; bytecode file offset 0x64ed4"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
mappingSpecUrls
    | recoveredValue0 |
    recoveredValue0 := mappingSpecUrls.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e64; bytecode file offset 0x64fe8"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003fb0; bytecode file offset 0x650c4"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
extensions
    | recoveredValue0 |
    recoveredValue0 := extensions.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004024; bytecode file offset 0x65178"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
extensionsProcessor
    | recoveredValue0 |
    recoveredValue0 := extensionsProcessor.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200040e0; bytecode file offset 0x65264"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
schemaUrls
    | recoveredValue0 |
    recoveredValue0 := schemaUrls.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004af0; bytecode file offset 0x65c7c"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
resolveMappingSpec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlMappingSpec.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) from: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007e5c; bytecode file offset 0x68f50"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
creationAction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    creationAction := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f08; bytecode file offset 0x69104"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
imageComponents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    imageComponents := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200081e4; bytecode file offset 0x692b8"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
handlers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handlers := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008268; bytecode file offset 0x69404"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
mappingSpecUrls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mappingSpecUrls := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200083f4; bytecode file offset 0x69508"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008470; bytecode file offset 0x695c4"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
extensions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    extensions := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000853c; bytecode file offset 0x69688"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
extensionsProcessor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    extensionsProcessor := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200086a0; bytecode file offset 0x6978c"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
schemaUrls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    schemaUrls := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000abf4; bytecode file offset 0x6bccc"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultExtensionsProcessor.
    (self) extensionsProcessor: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000f95c; bytecode file offset 0x70a34"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
addMappingSpecUrl: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingSpecUrls.
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
            recoveredStack1 := OrderedCollection.
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
            (recoveredStack0) mappingSpecUrls: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20012390; bytecode file offset 0x73460"
!SstWSDeployedObjectDescriptor methodsFor: 'recovered'!
applyDeploymentExtensionsToServices: recoveredArg1 andContainer: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) extensionsProcessor.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) value: (recoveredBlock5Value1) value: (recoveredBlock5Value2) value: (self).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

