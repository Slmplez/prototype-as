"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000338; bytecode file offset 0x6147c"
!SstWSServiceManager methodsFor: 'recovered'!
shutDown
    ^self
! !

"xxx_dyn.ic method 0x200016cc; bytecode file offset 0x62c08"
!SstWSServiceManager methodsFor: 'recovered'!
allServices
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := (recoveredValue0) allObjects.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002838; bytecode file offset 0x63b1c"
!SstWSServiceManager methodsFor: 'recovered'!
clear
    (self) shutDown.
    ^self
! !

"xxx_dyn.ic method 0x20003c1c; bytecode file offset 0x64d78"
!SstWSServiceManager methodsFor: 'recovered'!
soapActionCache
    | recoveredValue0 |
    recoveredValue0 := soapActionCache.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003d78; bytecode file offset 0x64ed4"
!SstWSServiceManager methodsFor: 'recovered'!
soapBodyNamespaceBindingOperationCache
    | recoveredValue0 |
    recoveredValue0 := soapBodyNamespaceBindingOperationCache.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003eec; bytecode file offset 0x64fe8"
!SstWSServiceManager methodsFor: 'recovered'!
soapBodyNamespaceServiceCache
    | recoveredValue0 |
    recoveredValue0 := soapBodyNamespaceServiceCache.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003fc8; bytecode file offset 0x650c4"
!SstWSServiceManager methodsFor: 'recovered'!
soapUrlOperationCache
    | recoveredValue0 |
    recoveredValue0 := soapUrlOperationCache.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20006304; bytecode file offset 0x67530"
!SstWSServiceManager methodsFor: 'recovered'!
operationNamed: recoveredArg1 inSoapBodyNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) soapBodyNamespaceBindingOperationCache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) objectNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006374; bytecode file offset 0x67530"
!SstWSServiceManager methodsFor: 'recovered'!
manage: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) add: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006404; bytecode file offset 0x67530"
!SstWSServiceManager methodsFor: 'recovered'!
serviceNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) objectNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007068; bytecode file offset 0x681b0"
!SstWSServiceManager methodsFor: 'recovered'!
serviceInSoapBodyNamespace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) soapBodyNamespaceServiceCache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200072c4; bytecode file offset 0x683c0"
!SstWSServiceManager methodsFor: 'recovered'!
registerService: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) soapBodyNamespaceServiceCache.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20007310; bytecode file offset 0x683e0"
!SstWSServiceManager methodsFor: 'recovered'!
removeOperation: recoveredArg1 withSoapAction: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) soapActionCache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007360; bytecode file offset 0x6843c"
!SstWSServiceManager methodsFor: 'recovered'!
cacheOperation: recoveredArg1 withSoapAction: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) soapActionCache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x200073a8; bytecode file offset 0x68474"
!SstWSServiceManager methodsFor: 'recovered'!
operationNamed: recoveredArg1 inSoapBodyNamespace: recoveredArg2 url: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) soapUrlOperationCacheFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) objectNamed: (recoveredValue2) inNamespace: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007c78; bytecode file offset 0x68d4c"
!SstWSServiceManager methodsFor: 'recovered'!
unmanage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) sstName.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) sstNamespace.
    recoveredValue5 := (recoveredValue0) removeObjectNamed: (recoveredValue2) inNamespace: (recoveredValue4).
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x2000817c; bytecode file offset 0x692b8"
!SstWSServiceManager methodsFor: 'recovered'!
soapActionCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    soapActionCache := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008260; bytecode file offset 0x69404"
!SstWSServiceManager methodsFor: 'recovered'!
soapBodyNamespaceBindingOperationCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    soapBodyNamespaceBindingOperationCache := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200083e4; bytecode file offset 0x69508"
!SstWSServiceManager methodsFor: 'recovered'!
soapBodyNamespaceServiceCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    soapBodyNamespaceServiceCache := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200084d8; bytecode file offset 0x695c4"
!SstWSServiceManager methodsFor: 'recovered'!
soapUrlOperationCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    soapUrlOperationCache := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008d08; bytecode file offset 0x69de4"
!SstWSServiceManager methodsFor: 'recovered'!
operationNamed: recoveredArg1 inSoapBodyNamespace: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) soapBodyNamespaceBindingOperationCache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) objectNamed: (recoveredValue1) inNamespace: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20009090; bytecode file offset 0x6a16c"
!SstWSServiceManager methodsFor: 'recovered'!
undeploy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) reconcileSoapCaches: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) unmanageServices: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x200090a0; bytecode file offset 0x6a16c"
!SstWSServiceManager methodsFor: 'recovered'!
deploy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) buildSoapCaches: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) manageServices: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20009cd0; bytecode file offset 0x6ada4"
!SstWSServiceManager methodsFor: 'recovered'!
manage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) sstName.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) sstNamespace.
    recoveredValue6 := (recoveredValue0) add: (recoveredValue1) named: (recoveredValue3) inNamespace: (recoveredValue5).
    ^recoveredValue6
! !

"xxx_dyn.ic method 0x2000c2e4; bytecode file offset 0x6d3e0"
!SstWSServiceManager methodsFor: 'recovered'!
manageServices: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) manage: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000c2f4; bytecode file offset 0x6d3e0"
!SstWSServiceManager methodsFor: 'recovered'!
unmanageServices: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) unmanage: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000c508; bytecode file offset 0x6d5e0"
!SstWSServiceManager methodsFor: 'recovered'!
removeServiceNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) removeObjectNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    recoveredValue3 := (self) soapBodyNamespaceServiceCache.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [].
    (recoveredValue3) removeKey: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^self
! !

"xxx_dyn.ic method 0x2000cc14; bytecode file offset 0x6dcec"
!SstWSServiceManager methodsFor: 'recovered'!
soapUrlOperationCacheFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) soapUrlOperationCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block2800a830Value0 block2800a830Value1 |
    block2800a830Value0 := SstNamespaceDictionary.
    block2800a830Value1 := (block2800a830Value0) new.
    block2800a830Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000f310; bytecode file offset 0x703e4"
!SstWSServiceManager methodsFor: 'recovered'!
soapBodyNamespaceFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) soapBodyExtension.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block2800a9e0Arg1 | 
    | block2800a9e0Value0 block2800a9e0Value1 |
    block2800a9e0Value0 := block2800a9e0Arg1.
    block2800a9e0Value1 := (block2800a9e0Value0) namespace.
    block2800a9e0Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001530c; bytecode file offset 0x763f4"
!SstWSServiceManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) soapActionCache: (recoveredValue1).
    recoveredValue2 := SstNamespaceDictionary.
    recoveredValue3 := (recoveredValue2) new.
    (self) soapBodyNamespaceBindingOperationCache: (recoveredValue3).
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    (self) soapBodyNamespaceServiceCache: (recoveredValue5).
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    (self) soapUrlOperationCache: (recoveredValue7).
    ^self
! !

"xxx_dyn.ic method 0x200162f8; bytecode file offset 0x773e4"
!SstWSServiceManager methodsFor: 'recovered'!
buildSoapActionCache: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) soapOperationExtension.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) soapAction.
    recoveredBlock8Local1 := recoveredBlock8Value1.
    recoveredBlock8Value2 := recoveredBlock8Local1.
    recoveredBlock8Value3 := [:recoveredBlock8Block18Arg1 | 
    | recoveredBlock8Block18Value0 recoveredBlock8Block18Value1 recoveredBlock8Block18Value2 |
    recoveredBlock8Block18Value0 := recoveredArg1.
    recoveredBlock8Block18Value1 := recoveredBlock8Block18Arg1.
    recoveredBlock8Block18Value2 := (self) cacheOperation: (recoveredBlock8Block18Value0) withSoapAction: (recoveredBlock8Block18Value1).
    recoveredBlock8Block18Value2
].
    recoveredBlock8Value4 := (recoveredBlock8Value2) ifNotNil: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20016310; bytecode file offset 0x773e4"
!SstWSServiceManager methodsFor: 'recovered'!
reconcileSoapActionCache: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) soapOperationExtension.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) soapAction.
    recoveredBlock8Local1 := recoveredBlock8Value1.
    recoveredBlock8Value2 := recoveredBlock8Local1.
    recoveredBlock8Value3 := [:recoveredBlock8Block18Arg1 | 
    | recoveredBlock8Block18Value0 recoveredBlock8Block18Value1 recoveredBlock8Block18Value2 |
    recoveredBlock8Block18Value0 := recoveredArg1.
    recoveredBlock8Block18Value1 := recoveredBlock8Block18Arg1.
    recoveredBlock8Block18Value2 := (self) removeOperation: (recoveredBlock8Block18Value0) withSoapAction: (recoveredBlock8Block18Value1).
    recoveredBlock8Block18Value2
].
    recoveredBlock8Value4 := (recoveredBlock8Value2) ifNotNil: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x2001eeec; bytecode file offset 0x7ffcc"
!SstWSServiceManager methodsFor: 'recovered'!
reconcileSoapCaches: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) sstIsRemote.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 58] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sstImplementation.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) bindings.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block28Arg1 | 
    | recoveredBlock7Block28Value0 recoveredBlock7Block28Value1 recoveredBlock7Block28Value2 recoveredBlock7Block28Value3 |
    recoveredBlock7Block28Value0 := recoveredBlock7Block28Arg1.
    recoveredBlock7Block28Value1 := (recoveredBlock7Block28Value0) operations.
    recoveredBlock7Block28Value2 := [:recoveredBlock7Block28Block36Arg1 | 
    | recoveredBlock7Block28Block36Value0 recoveredBlock7Block28Block36Value1 recoveredBlock7Block28Block36Value2 recoveredBlock7Block28Block36Value3 |
    recoveredBlock7Block28Block36Value0 := recoveredBlock7Block28Block36Arg1.
    (self) reconcileSoapActionCache: (recoveredBlock7Block28Block36Value0).
    recoveredBlock7Block28Block36Value1 := recoveredBlock7Block28Block36Arg1.
    recoveredBlock7Block28Block36Value2 := recoveredBlock7Arg1.
    recoveredBlock7Block28Block36Value3 := (self) reconcileSoapBodyNamespaceCaches: (recoveredBlock7Block28Block36Value1) with: (recoveredBlock7Block28Block36Value2).
    recoveredBlock7Block28Block36Value3
].
    recoveredBlock7Block28Value3 := (recoveredBlock7Block28Value1) do: (recoveredBlock7Block28Value2).
    recoveredBlock7Block28Value3
].
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) do: (recoveredBlock7Stack2).
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2002303c; bytecode file offset 0x8412c"
!SstWSServiceManager methodsFor: 'recovered'!
buildSoapCaches: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) sstIsRemote.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 74] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sstImplementation.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ports.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block28Arg1 | 
    | recoveredBlock7Block28Value0 recoveredBlock7Block28Value1 recoveredBlock7Block28Value2 recoveredBlock7Block28Value3 recoveredBlock7Block28Value4 recoveredBlock7Block28Value5 recoveredBlock7Block28Value6 recoveredBlock7Block28Value7 recoveredBlock7Block28Value8 |
    recoveredBlock7Block28Value0 := recoveredBlock7Block28Arg1.
    recoveredBlock7Block28Value1 := (recoveredBlock7Block28Value0) soapLocation.
    recoveredBlock7Block28Value2 := (recoveredBlock7Block28Value1) sstAsUrl.
    recoveredBlock7Block28Value3 := (recoveredBlock7Block28Value2) sstWSCacheKey.
    recoveredLocal1 := recoveredBlock7Block28Value3.
    recoveredBlock7Block28Value4 := recoveredBlock7Block28Arg1.
    recoveredBlock7Block28Value5 := (recoveredBlock7Block28Value4) binding.
    recoveredBlock7Block28Value6 := (recoveredBlock7Block28Value5) operations.
    recoveredBlock7Block28Value7 := [:recoveredBlock7Block28Block48Arg1 | 
    | recoveredBlock7Block28Block48Value0 recoveredBlock7Block28Block48Value1 recoveredBlock7Block28Block48Value2 recoveredBlock7Block28Block48Value3 recoveredBlock7Block28Block48Value4 |
    recoveredBlock7Block28Block48Value0 := recoveredBlock7Block28Block48Arg1.
    (self) buildSoapActionCache: (recoveredBlock7Block28Block48Value0).
    recoveredBlock7Block28Block48Value1 := recoveredBlock7Block28Block48Arg1.
    recoveredBlock7Block28Block48Value2 := recoveredBlock7Arg1.
    recoveredBlock7Block28Block48Value3 := recoveredLocal1.
    recoveredBlock7Block28Block48Value4 := (self) buildSoapBodyNamespaceCaches: (recoveredBlock7Block28Block48Value1) with: (recoveredBlock7Block28Block48Value2) url: (recoveredBlock7Block28Block48Value3).
    recoveredBlock7Block28Block48Value4
].
    recoveredBlock7Block28Value8 := (recoveredBlock7Block28Value6) do: (recoveredBlock7Block28Value7).
    recoveredBlock7Block28Value8
].
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) do: (recoveredBlock7Stack2).
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20029068; bytecode file offset 0x8a158"
!SstWSServiceManager methodsFor: 'recovered'!
reconcileSoapBodyNamespaceCaches: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) input.
    recoveredValue2 := (self) soapBodyNamespaceFor: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 |
    recoveredBlock13Value0 := (self) soapBodyNamespaceBindingOperationCache.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := recoveredBlock13Arg1.
    (recoveredBlock13Value0) remove: (recoveredBlock13Value1) inNamespace: (recoveredBlock13Value2).
    recoveredBlock13Value3 := (self) soapBodyNamespaceServiceCache.
    recoveredBlock13Value4 := recoveredBlock13Arg1.
    recoveredBlock13Value5 := [].
    recoveredBlock13Value6 := (recoveredBlock13Value3) removeKey: (recoveredBlock13Value4) ifAbsent: (recoveredBlock13Value5).
    recoveredBlock13Value6
].
    (recoveredValue2) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) output.
    recoveredValue7 := (self) soapBodyNamespaceFor: (recoveredValue6).
    recoveredValue8 := recoveredValue7.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 recoveredBlock49Value6 |
    recoveredBlock49Value0 := (self) soapBodyNamespaceBindingOperationCache.
    recoveredBlock49Value1 := recoveredArg1.
    recoveredBlock49Value2 := recoveredBlock49Arg1.
    (recoveredBlock49Value0) remove: (recoveredBlock49Value1) inNamespace: (recoveredBlock49Value2).
    recoveredBlock49Value3 := (self) soapBodyNamespaceServiceCache.
    recoveredBlock49Value4 := recoveredBlock49Arg1.
    recoveredBlock49Value5 := [].
    recoveredBlock49Value6 := (recoveredBlock49Value3) removeKey: (recoveredBlock49Value4) ifAbsent: (recoveredBlock49Value5).
    recoveredBlock49Value6
].
    (recoveredValue7) ifNotNil: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) faults.
    recoveredValue12 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 recoveredBlock79Value3 recoveredBlock79Value4 |
    recoveredBlock79Value0 := recoveredBlock79Arg1.
    recoveredBlock79Value1 := (self) soapBodyNamespaceFor: (recoveredBlock79Value0).
    recoveredBlock79Value2 := recoveredBlock79Value1.
    recoveredLocal1 := recoveredBlock79Value2.
    recoveredBlock79Value3 := [:recoveredBlock79Block92Arg1 | 
    | recoveredBlock79Block92Value0 recoveredBlock79Block92Value1 recoveredBlock79Block92Value2 recoveredBlock79Block92Value3 recoveredBlock79Block92Value4 recoveredBlock79Block92Value5 recoveredBlock79Block92Value6 |
    recoveredBlock79Block92Value0 := (self) soapBodyNamespaceBindingOperationCache.
    recoveredBlock79Block92Value1 := recoveredArg1.
    recoveredBlock79Block92Value2 := recoveredBlock79Block92Arg1.
    (recoveredBlock79Block92Value0) remove: (recoveredBlock79Block92Value1) inNamespace: (recoveredBlock79Block92Value2).
    recoveredBlock79Block92Value3 := (self) soapBodyNamespaceServiceCache.
    recoveredBlock79Block92Value4 := recoveredBlock79Block92Arg1.
    recoveredBlock79Block92Value5 := [].
    recoveredBlock79Block92Value6 := (recoveredBlock79Block92Value3) removeKey: (recoveredBlock79Block92Value4) ifAbsent: (recoveredBlock79Block92Value5).
    recoveredBlock79Block92Value6
].
    recoveredBlock79Value4 := (recoveredBlock79Value1) ifNotNil: (recoveredBlock79Value3).
    recoveredBlock79Value4
].
    (recoveredValue11) do: (recoveredValue12).
    ^self
! !

"xxx_dyn.ic method 0x2002d2b4; bytecode file offset 0x8e3b4"
!SstWSServiceManager methodsFor: 'recovered'!
buildSoapBodyNamespaceCaches: recoveredArg1 with: recoveredArg2 url: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) soapUrlOperationCacheFor: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) input.
    recoveredValue4 := (self) soapBodyNamespaceFor: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 recoveredBlock21Value14 recoveredBlock21Value15 recoveredBlock21Value16 |
    recoveredBlock21Value0 := SstWSEncodingStrategy.
    recoveredBlock21Value1 := recoveredArg1.
    recoveredBlock21Value2 := (recoveredBlock21Value1) input.
    recoveredBlock21Value3 := (recoveredBlock21Value2) soapBodyExtension.
    recoveredBlock21Value4 := recoveredArg1.
    recoveredBlock21Value5 := (recoveredBlock21Value0) forMessage: (recoveredBlock21Value3) bindingOperation: (recoveredBlock21Value4).
    recoveredLocal2 := recoveredBlock21Value5.
    recoveredBlock21Value6 := (self) soapBodyNamespaceBindingOperationCache.
    recoveredBlock21Value7 := recoveredArg1.
    recoveredBlock21Value8 := recoveredBlock21Arg1.
    (recoveredBlock21Value6) add: (recoveredBlock21Value7) inNamespace: (recoveredBlock21Value8).
    recoveredBlock21Value9 := recoveredLocal2.
    recoveredBlock21Value10 := recoveredArg1.
    recoveredBlock21Value11 := recoveredLocal1.
    recoveredBlock21Value12 := recoveredBlock21Arg1.
    (recoveredBlock21Value9) add: (recoveredBlock21Value10) toCache: (recoveredBlock21Value11) inNamespace: (recoveredBlock21Value12).
    recoveredBlock21Value13 := (self) soapBodyNamespaceServiceCache.
    recoveredBlock21Value14 := recoveredBlock21Arg1.
    recoveredBlock21Value15 := recoveredArg2.
    recoveredBlock21Value16 := (recoveredBlock21Value13) at: (recoveredBlock21Value14) put: (recoveredBlock21Value15).
    recoveredBlock21Value16
].
    (recoveredValue4) ifNotNil: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) output.
    recoveredValue9 := (self) soapBodyNamespaceFor: (recoveredValue8).
    recoveredValue10 := recoveredValue9.
    recoveredLocal3 := recoveredValue10.
    recoveredValue11 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Value0 recoveredBlock88Value1 recoveredBlock88Value2 recoveredBlock88Value3 recoveredBlock88Value4 recoveredBlock88Value5 recoveredBlock88Value6 recoveredBlock88Value7 recoveredBlock88Value8 recoveredBlock88Value9 recoveredBlock88Value10 recoveredBlock88Value11 recoveredBlock88Value12 recoveredBlock88Value13 recoveredBlock88Value14 recoveredBlock88Value15 recoveredBlock88Value16 |
    recoveredBlock88Value0 := SstWSEncodingStrategy.
    recoveredBlock88Value1 := recoveredArg1.
    recoveredBlock88Value2 := (recoveredBlock88Value1) output.
    recoveredBlock88Value3 := (recoveredBlock88Value2) soapBodyExtension.
    recoveredBlock88Value4 := recoveredArg1.
    recoveredBlock88Value5 := (recoveredBlock88Value0) forMessage: (recoveredBlock88Value3) bindingOperation: (recoveredBlock88Value4).
    recoveredLocal2 := recoveredBlock88Value5.
    recoveredBlock88Value6 := (self) soapBodyNamespaceBindingOperationCache.
    recoveredBlock88Value7 := recoveredArg1.
    recoveredBlock88Value8 := recoveredBlock88Arg1.
    (recoveredBlock88Value6) add: (recoveredBlock88Value7) inNamespace: (recoveredBlock88Value8).
    recoveredBlock88Value9 := recoveredLocal2.
    recoveredBlock88Value10 := recoveredArg1.
    recoveredBlock88Value11 := recoveredLocal1.
    recoveredBlock88Value12 := recoveredBlock88Arg1.
    (recoveredBlock88Value9) add: (recoveredBlock88Value10) toCache: (recoveredBlock88Value11) inNamespace: (recoveredBlock88Value12).
    recoveredBlock88Value13 := (self) soapBodyNamespaceServiceCache.
    recoveredBlock88Value14 := recoveredBlock88Arg1.
    recoveredBlock88Value15 := recoveredArg2.
    recoveredBlock88Value16 := (recoveredBlock88Value13) at: (recoveredBlock88Value14) put: (recoveredBlock88Value15).
    recoveredBlock88Value16
].
    (recoveredValue9) ifNotNil: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) faults.
    recoveredValue14 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Value0 recoveredBlock149Value1 recoveredBlock149Value2 recoveredBlock149Value3 recoveredBlock149Value4 |
    recoveredBlock149Value0 := recoveredBlock149Arg1.
    recoveredBlock149Value1 := (self) soapBodyNamespaceFor: (recoveredBlock149Value0).
    recoveredBlock149Value2 := recoveredBlock149Value1.
    recoveredLocal3 := recoveredBlock149Value2.
    recoveredBlock149Value3 := [:recoveredBlock149Block162Arg1 | 
    | recoveredBlock149Block162Value0 recoveredBlock149Block162Value1 recoveredBlock149Block162Value2 recoveredBlock149Block162Value3 recoveredBlock149Block162Value4 recoveredBlock149Block162Value5 recoveredBlock149Block162Value6 |
    recoveredBlock149Block162Value0 := (self) soapBodyNamespaceBindingOperationCache.
    recoveredBlock149Block162Value1 := recoveredArg1.
    recoveredBlock149Block162Value2 := recoveredBlock149Block162Arg1.
    (recoveredBlock149Block162Value0) add: (recoveredBlock149Block162Value1) inNamespace: (recoveredBlock149Block162Value2).
    recoveredBlock149Block162Value3 := (self) soapBodyNamespaceServiceCache.
    recoveredBlock149Block162Value4 := recoveredBlock149Block162Arg1.
    recoveredBlock149Block162Value5 := recoveredArg2.
    recoveredBlock149Block162Value6 := (recoveredBlock149Block162Value3) at: (recoveredBlock149Block162Value4) put: (recoveredBlock149Block162Value5).
    recoveredBlock149Block162Value6
].
    recoveredBlock149Value4 := (recoveredBlock149Value1) ifNotNil: (recoveredBlock149Value3).
    recoveredBlock149Value4
].
    (recoveredValue13) do: (recoveredValue14).
    ^self
! !

