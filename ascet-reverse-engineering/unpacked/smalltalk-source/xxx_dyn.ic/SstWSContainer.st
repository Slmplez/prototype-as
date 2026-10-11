"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200008b8; bytecode file offset 0x619a4"
!SstWSContainer methodsFor: 'recovered'!
namespace
    | recoveredValue0 |
    recoveredValue0 := (self) globalNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000d94; bytecode file offset 0x6209c"
!SstWSContainer methodsFor: 'recovered'!
containers
    | recoveredValue0 |
    recoveredValue0 := Containers.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000173c; bytecode file offset 0x62c08"
!SstWSContainer methodsFor: 'recovered'!
defaultServiceInterfaceClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) defaultServiceInterfaceClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000188c; bytecode file offset 0x62c08"
!SstWSContainer methodsFor: 'recovered'!
allServices
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) serviceManager.
    recoveredValue1 := (recoveredValue0) allServices.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000191c; bytecode file offset 0x62c08"
!SstWSContainer methodsFor: 'recovered'!
serviceInterfaceClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) serviceInterfaceClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000210c; bytecode file offset 0x63558"
!SstWSContainer methodsFor: 'recovered'!
serviceManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSServiceManager.
    recoveredValue1 := (self) managerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200021dc; bytecode file offset 0x63558"
!SstWSContainer methodsFor: 'recovered'!
serviceDefinitionsManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSServiceDefinitionsManager.
    recoveredValue1 := (self) managerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200022ac; bytecode file offset 0x63558"
!SstWSContainer methodsFor: 'recovered'!
serializationManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSSerializationManager.
    recoveredValue1 := (self) managerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200023ac; bytecode file offset 0x63558"
!SstWSContainer methodsFor: 'recovered'!
portManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSPortManager.
    recoveredValue1 := (self) managerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200023dc; bytecode file offset 0x63558"
!SstWSContainer methodsFor: 'recovered'!
actorManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSActorManager.
    recoveredValue1 := (self) managerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000247c; bytecode file offset 0x63558"
!SstWSContainer methodsFor: 'recovered'!
engineFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := WSEngineFactory.
    recoveredValue1 := (self) managerNamed: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002d0c; bytecode file offset 0x64108"
!SstWSContainer methodsFor: 'recovered'!
deployUnmanagedServices: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) deploymentManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) deployUnmanagedServices: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002eec; bytecode file offset 0x64108"
!SstWSContainer methodsFor: 'recovered'!
deploy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) deploymentManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) deploy: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002f9c; bytecode file offset 0x64108"
!SstWSContainer methodsFor: 'recovered'!
undeploy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) deploymentManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) undeploy: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20003654; bytecode file offset 0x64720"
!SstWSContainer methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := (self) portManager.
    (recoveredValue0) startUp.
    ^self
! !

"xxx_dyn.ic method 0x20003884; bytecode file offset 0x649e8"
!SstWSContainer methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003c0c; bytecode file offset 0x64d78"
!SstWSContainer methodsFor: 'recovered'!
properties
    | recoveredValue0 |
    recoveredValue0 := properties.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003cd0; bytecode file offset 0x64ed4"
!SstWSContainer methodsFor: 'recovered'!
configuration
    | recoveredValue0 |
    recoveredValue0 := configuration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e5c; bytecode file offset 0x64fe8"
!SstWSContainer methodsFor: 'recovered'!
deploymentManager
    | recoveredValue0 |
    recoveredValue0 := deploymentManager.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003ff0; bytecode file offset 0x650c4"
!SstWSContainer methodsFor: 'recovered'!
managers
    | recoveredValue0 |
    recoveredValue0 := managers.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000408c; bytecode file offset 0x65178"
!SstWSContainer methodsFor: 'recovered'!
globalNamespace
    | recoveredValue0 |
    recoveredValue0 := globalNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004160; bytecode file offset 0x65264"
!SstWSContainer methodsFor: 'recovered'!
handlerFactory
    | recoveredValue0 |
    recoveredValue0 := handlerFactory.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200041d4; bytecode file offset 0x65328"
!SstWSContainer methodsFor: 'recovered'!
messageContextFactory
    | recoveredValue0 |
    recoveredValue0 := messageContextFactory.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004638; bytecode file offset 0x6592c"
!SstWSContainer methodsFor: 'recovered'!
isStarted
    ^true
! !

"xxx_dyn.ic method 0x20004dc0; bytecode file offset 0x65e88"
!SstWSContainer methodsFor: 'recovered'!
setupUsing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) setupContainer: (self).
    ^self
! !

"xxx_dyn.ic method 0x20004e58; bytecode file offset 0x65fa4"
!SstWSContainer methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) globalNamespace: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20005284; bytecode file offset 0x66350"
!SstWSContainer methodsFor: 'recovered'!
resetManagers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsOrderedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    managers := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x200053f8; bytecode file offset 0x664c4"
!SstWSContainer methodsFor: 'recovered'!
restartMode
    (self) halt: ('Not yet implemented').
    ^self
! !

"xxx_dyn.ic method 0x20005b20; bytecode file offset 0x66bec"
!SstWSContainer methodsFor: 'recovered'!
restartMode: recoveredArg1
    (self) halt: ('Not yet implemented').
    ^self
! !

"xxx_dyn.ic method 0x20005bb0; bytecode file offset 0x66c8c"
!SstWSContainer methodsFor: 'recovered'!
engineFactory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSEngineFactory.
    recoveredValue2 := (self) addManager: (recoveredValue0) named: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20006288; bytecode file offset 0x67374"
!SstWSContainer methodsFor: 'recovered'!
addProperty: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200063d4; bytecode file offset 0x67530"
!SstWSContainer methodsFor: 'recovered'!
serviceNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) serviceManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) serviceNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006c98; bytecode file offset 0x67dc4"
!SstWSContainer methodsFor: 'recovered'!
actorManager: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSActorManager.
    (self) addManager: (recoveredValue0) named: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006cb8; bytecode file offset 0x67dc4"
!SstWSContainer methodsFor: 'recovered'!
serializationManager: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSSerializationManager.
    (self) addManager: (recoveredValue0) named: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006cc8; bytecode file offset 0x67dc4"
!SstWSContainer methodsFor: 'recovered'!
portManager: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSPortManager.
    (self) addManager: (recoveredValue0) named: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006cd8; bytecode file offset 0x67dc4"
!SstWSContainer methodsFor: 'recovered'!
serviceManager: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSServiceManager.
    (self) addManager: (recoveredValue0) named: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006cf8; bytecode file offset 0x67dc4"
!SstWSContainer methodsFor: 'recovered'!
serviceDefinitionsManager: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSServiceDefinitionsManager.
    (self) addManager: (recoveredValue0) named: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006f64; bytecode file offset 0x681b0"
!SstWSContainer methodsFor: 'recovered'!
propertyNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200070a4; bytecode file offset 0x681b0"
!SstWSContainer methodsFor: 'recovered'!
managerNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) managers.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007204; bytecode file offset 0x682d0"
!SstWSContainer methodsFor: 'recovered'!
undeployServiceNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) serviceNamed: (recoveredValue0) inNamespace: (recoveredValue1).
    recoveredValue3 := (self) undeploy: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007dd4; bytecode file offset 0x68f50"
!SstWSContainer methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200082f0; bytecode file offset 0x69404"
!SstWSContainer methodsFor: 'recovered'!
configuration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configuration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200083dc; bytecode file offset 0x69508"
!SstWSContainer methodsFor: 'recovered'!
deploymentManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    deploymentManager := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000851c; bytecode file offset 0x69688"
!SstWSContainer methodsFor: 'recovered'!
globalNamespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    globalNamespace := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008690; bytecode file offset 0x6978c"
!SstWSContainer methodsFor: 'recovered'!
handlerFactory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handlerFactory := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008704; bytecode file offset 0x69858"
!SstWSContainer methodsFor: 'recovered'!
messageContextFactory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    messageContextFactory := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008e24; bytecode file offset 0x69ef4"
!SstWSContainer methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    properties := recoveredValue1.
    (self) resetManagers.
    ^self
! !

"xxx_dyn.ic method 0x200095b0; bytecode file offset 0x6a684"
!SstWSContainer methodsFor: 'recovered'!
addManager: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) managers.
    recoveredValue1 := EsAtom.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) intern: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) put: (recoveredValue4).
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x2000a65c; bytecode file offset 0x6b754"
!SstWSContainer methodsFor: 'recovered'!
setupAfterLoadNonInherited
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Containers.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Containers := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000db28; bytecode file offset 0x6ec04"
!SstWSContainer methodsFor: 'recovered'!
shutDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) managers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2800a878Arg1 | 
    | block2800a878Value0 block2800a878Value1 |
    block2800a878Value0 := block2800a878Arg1.
    block2800a878Value1 := (block2800a878Value0) shutDown.
    block2800a878Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := SstWSEncodingStrategy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) setupAfterLoadNonInherited.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20010794; bytecode file offset 0x71874"
!SstWSContainer methodsFor: 'recovered'!
clear
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) managers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2800abb4Arg1 | 
    | block2800abb4Value0 block2800abb4Value1 |
    block2800abb4Value0 := block2800abb4Arg1.
    block2800abb4Value1 := (block2800abb4Value0) shutDown.
    block2800abb4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) resetManagers.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlerFactory.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) clear.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001549c; bytecode file offset 0x76578"
!SstWSContainer methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) space.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) nextPut: ($().
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) name.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPut: ($)).
    ^self
! !

