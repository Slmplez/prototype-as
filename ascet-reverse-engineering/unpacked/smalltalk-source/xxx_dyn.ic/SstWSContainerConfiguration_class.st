"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20005680; bytecode file offset 0x66a34"
!SstWSContainerConfiguration class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20009d20; bytecode file offset 0x6adf4"
!SstWSContainerConfiguration class methodsFor: 'recovered'!
newDescriptorNamed: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SstWSReferenceDescriptor.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) smalltalkClass: (recoveredValue4).
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x200256a8; bytecode file offset 0x8683c"
!SstWSContainerConfiguration class methodsFor: 'recovered'!
docLiteralWrappedConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SstWSDeploymentManager.
    (recoveredValue1) deploymentManager: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := SstWSService.
    (recoveredValue3) defaultServiceInterfaceClass: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := SstWSHandlerFactory.
    (recoveredValue5) handlerFactory: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := WSDefaultNamespace.
    (recoveredValue7) globalNamespace: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := SstWSMessageContextFactory.
    (recoveredValue9) messageContextFactory: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := SstWSEngineFactory.
    recoveredValue13 := (self) newDescriptorNamed: ('wsEngineFactory') class: (recoveredValue12).
    (recoveredValue11) addManagerDescriptor: (recoveredValue13).
    recoveredValue14 := recoveredValue0.
    recoveredValue15 := SstWSActorManager.
    recoveredValue16 := (self) newDescriptorNamed: ('wsActorManager') class: (recoveredValue15).
    (recoveredValue14) addManagerDescriptor: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := SstWSDefinitionsManager.
    recoveredValue19 := (self) newDescriptorNamed: ('wsServiceDefinitionsManager') class: (recoveredValue18).
    (recoveredValue17) addManagerDescriptor: (recoveredValue19).
    recoveredValue20 := recoveredValue0.
    recoveredValue21 := SstWSDocLiteralWrappedXmlObjectCache.
    recoveredValue22 := (self) newDescriptorNamed: ('wsSerializationManager') class: (recoveredValue21).
    (recoveredValue20) addManagerDescriptor: (recoveredValue22).
    recoveredValue23 := recoveredValue0.
    recoveredValue24 := SstWSServiceManager.
    recoveredValue25 := (self) newDescriptorNamed: ('wsServiceManager') class: (recoveredValue24).
    (recoveredValue23) addManagerDescriptor: (recoveredValue25).
    recoveredValue26 := recoveredValue0.
    recoveredValue27 := SstWSPortManager.
    recoveredValue28 := (self) newDescriptorNamed: ('wsPortManager') class: (recoveredValue27).
    (recoveredValue26) addManagerDescriptor: (recoveredValue28).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20025714; bytecode file offset 0x8683c"
!SstWSContainerConfiguration class methodsFor: 'recovered'!
defaultConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SstWSDeploymentManager.
    (recoveredValue1) deploymentManager: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := SstWSService.
    (recoveredValue3) defaultServiceInterfaceClass: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := SstWSHandlerFactory.
    (recoveredValue5) handlerFactory: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := WSDefaultNamespace.
    (recoveredValue7) globalNamespace: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := SstWSMessageContextFactory.
    (recoveredValue9) messageContextFactory: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := SstWSEngineFactory.
    recoveredValue13 := (self) newDescriptorNamed: ('wsEngineFactory') class: (recoveredValue12).
    (recoveredValue11) addManagerDescriptor: (recoveredValue13).
    recoveredValue14 := recoveredValue0.
    recoveredValue15 := SstWSActorManager.
    recoveredValue16 := (self) newDescriptorNamed: ('wsActorManager') class: (recoveredValue15).
    (recoveredValue14) addManagerDescriptor: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := SstWSDefinitionsManager.
    recoveredValue19 := (self) newDescriptorNamed: ('wsServiceDefinitionsManager') class: (recoveredValue18).
    (recoveredValue17) addManagerDescriptor: (recoveredValue19).
    recoveredValue20 := recoveredValue0.
    recoveredValue21 := SstWSXmlObjectCache.
    recoveredValue22 := (self) newDescriptorNamed: ('wsSerializationManager') class: (recoveredValue21).
    (recoveredValue20) addManagerDescriptor: (recoveredValue22).
    recoveredValue23 := recoveredValue0.
    recoveredValue24 := SstWSServiceManager.
    recoveredValue25 := (self) newDescriptorNamed: ('wsServiceManager') class: (recoveredValue24).
    (recoveredValue23) addManagerDescriptor: (recoveredValue25).
    recoveredValue26 := recoveredValue0.
    recoveredValue27 := SstWSPortManager.
    recoveredValue28 := (self) newDescriptorNamed: ('wsPortManager') class: (recoveredValue27).
    (recoveredValue26) addManagerDescriptor: (recoveredValue28).
    ^recoveredValue0
! !

