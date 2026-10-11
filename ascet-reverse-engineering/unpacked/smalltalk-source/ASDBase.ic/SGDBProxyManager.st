"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c16c; bytecode file offset 0x92209c"
!SGDBProxyManager methodsFor: 'recovered'!
signalProxies
    ^#()
! !

"ASDBase.ic method 0x200492ac; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
configLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004931c; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
graphicsLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graphicsProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004950c; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
iconLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) iconProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200497dc; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
textDocumentationLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) textDocumentationProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004982c; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
projectLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049a4c; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
componentLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049b4c; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
classConfigLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classConfigProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049c3c; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
protocolLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) protocolProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049cfc; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
osLogicLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osLogicProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049e6c; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
signalLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) signalProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a15c; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
folderLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) folderProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a67c; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
externalCodeLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) externalCodeProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a7ac; bytecode file offset 0x947128"
!SGDBProxyManager methodsFor: 'recovered'!
libraryLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) libraryProxies.
    recoveredValue1 := (self) labelsForProxies: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066814; bytecode file offset 0x963428"
!SGDBProxyManager methodsFor: 'recovered'!
proxies
    | recoveredValue0 |
    recoveredValue0 := proxies.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008958c; bytecode file offset 0x985ef8"
!SGDBProxyManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    proxies := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20095448; bytecode file offset 0x991fb4"
!SGDBProxyManager methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be5cc; bytecode file offset 0x9bb178"
!SGDBProxyManager methodsFor: 'recovered'!
proxies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    proxies := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20171024; bytecode file offset 0xa6d9cc"
!SGDBProxyManager methodsFor: 'recovered'!
textDocumentationProxies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cede4Arg1 | 
    | block280cede4Value0 block280cede4Value1 block280cede4Value2 block280cede4Value3 block280cede4Value4 block280cede4Value5 |
    block280cede4Value0 := block280cede4Arg1.
    block280cede4Value1 := (block280cede4Value0) className.
    block280cede4Value2 := (block280cede4Value1) zapBlanks.
    block280cede4Value3 := SGTextDocumentation.
    block280cede4Value4 := (block280cede4Value3) printString.
    block280cede4Value5 := (block280cede4Value2) = (block280cede4Value4).
    block280cede4Value5
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20171048; bytecode file offset 0xa6d9cc"
!SGDBProxyManager methodsFor: 'recovered'!
graphicsProxies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cee08Arg1 | 
    | block280cee08Value0 block280cee08Value1 block280cee08Value2 block280cee08Value3 block280cee08Value4 block280cee08Value5 |
    block280cee08Value0 := block280cee08Arg1.
    block280cee08Value1 := (block280cee08Value0) className.
    block280cee08Value2 := (block280cee08Value1) zapBlanks.
    block280cee08Value3 := SGTopGraphicsBlockDB.
    block280cee08Value4 := (block280cee08Value3) printString.
    block280cee08Value5 := (block280cee08Value2) = (block280cee08Value4).
    block280cee08Value5
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017106c; bytecode file offset 0xa6d9cc"
!SGDBProxyManager methodsFor: 'recovered'!
folderProxies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cee2cArg1 | 
    | block280cee2cValue0 block280cee2cValue1 block280cee2cValue2 block280cee2cValue3 block280cee2cValue4 block280cee2cValue5 |
    block280cee2cValue0 := block280cee2cArg1.
    block280cee2cValue1 := (block280cee2cValue0) className.
    block280cee2cValue2 := (block280cee2cValue1) zapBlanks.
    block280cee2cValue3 := RBFolder.
    block280cee2cValue4 := (block280cee2cValue3) printString.
    block280cee2cValue5 := (block280cee2cValue2) = (block280cee2cValue4).
    block280cee2cValue5
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20171090; bytecode file offset 0xa6d9cc"
!SGDBProxyManager methodsFor: 'recovered'!
iconProxies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cee50Arg1 | 
    | block280cee50Value0 block280cee50Value1 block280cee50Value2 block280cee50Value3 block280cee50Value4 block280cee50Value5 |
    block280cee50Value0 := block280cee50Arg1.
    block280cee50Value1 := (block280cee50Value0) className.
    block280cee50Value2 := (block280cee50Value1) zapBlanks.
    block280cee50Value3 := SGImageDB.
    block280cee50Value4 := (block280cee50Value3) printString.
    block280cee50Value5 := (block280cee50Value2) = (block280cee50Value4).
    block280cee50Value5
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201710b4; bytecode file offset 0xa6d9cc"
!SGDBProxyManager methodsFor: 'recovered'!
externalCodeProxies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cee74Arg1 | 
    | block280cee74Value0 block280cee74Value1 block280cee74Value2 block280cee74Value3 block280cee74Value4 block280cee74Value5 |
    block280cee74Value0 := block280cee74Arg1.
    block280cee74Value1 := (block280cee74Value0) className.
    block280cee74Value2 := (block280cee74Value1) zapBlanks.
    block280cee74Value3 := SGCodeContainerExternal.
    block280cee74Value4 := (block280cee74Value3) printString.
    block280cee74Value5 := (block280cee74Value2) = (block280cee74Value4).
    block280cee74Value5
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201710d8; bytecode file offset 0xa6d9cc"
!SGDBProxyManager methodsFor: 'recovered'!
projectProxies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cee98Arg1 | 
    | block280cee98Value0 block280cee98Value1 block280cee98Value2 block280cee98Value3 block280cee98Value4 block280cee98Value5 |
    block280cee98Value0 := block280cee98Arg1.
    block280cee98Value1 := (block280cee98Value0) className.
    block280cee98Value2 := (block280cee98Value1) zapBlanks.
    block280cee98Value3 := SGProject.
    block280cee98Value4 := (block280cee98Value3) printString.
    block280cee98Value5 := (block280cee98Value2) = (block280cee98Value4).
    block280cee98Value5
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201710fc; bytecode file offset 0xa6d9cc"
!SGDBProxyManager methodsFor: 'recovered'!
protocolProxies
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ceebcArg1 | 
    | block280ceebcValue0 block280ceebcValue1 block280ceebcValue2 block280ceebcValue3 block280ceebcValue4 block280ceebcValue5 |
    block280ceebcValue0 := block280ceebcArg1.
    block280ceebcValue1 := (block280ceebcValue0) className.
    block280ceebcValue2 := (block280ceebcValue1) zapBlanks.
    block280ceebcValue3 := SGChannelProtocolModel.
    block280ceebcValue4 := (block280ceebcValue3) printString.
    block280ceebcValue5 := (block280ceebcValue2) = (block280ceebcValue4).
    block280ceebcValue5
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dbea0; bytecode file offset 0xbd87f4"
!SGDBProxyManager methodsFor: 'recovered'!
configProxies
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SGImplConfiguration.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := SGValueConfiguration.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e66e8Arg1 | 
    | block280e66e8Value0 block280e66e8Value1 |
    block280e66e8Value0 := block280e66e8Arg1.
    block280e66e8Value1 := (block280e66e8Value0) printString.
    block280e66e8Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 |
    recoveredBlock29Value0 := recoveredLocal1.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value1) className.
    recoveredBlock29Value3 := (recoveredBlock29Value2) zapBlanks.
    recoveredBlock29Value4 := (recoveredBlock29Value0) includes: (recoveredBlock29Value3).
    recoveredBlock29Value4
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dbed8; bytecode file offset 0xbd87f4"
!SGDBProxyManager methodsFor: 'recovered'!
componentProxies
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SGClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := SGModule.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e670cArg1 | 
    | block280e670cValue0 block280e670cValue1 |
    block280e670cValue0 := block280e670cArg1.
    block280e670cValue1 := (block280e670cValue0) printString.
    block280e670cValue1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 |
    recoveredBlock29Value0 := recoveredLocal1.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value1) className.
    recoveredBlock29Value3 := (recoveredBlock29Value2) zapBlanks.
    recoveredBlock29Value4 := (recoveredBlock29Value0) includes: (recoveredBlock29Value3).
    recoveredBlock29Value4
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dbf10; bytecode file offset 0xbd87f4"
!SGDBProxyManager methodsFor: 'recovered'!
classConfigProxies
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SGClassImplConfig.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := SGClassValueConfig.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e6730Arg1 | 
    | block280e6730Value0 block280e6730Value1 |
    block280e6730Value0 := block280e6730Arg1.
    block280e6730Value1 := (block280e6730Value0) printString.
    block280e6730Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 |
    recoveredBlock29Value0 := recoveredLocal1.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value1) className.
    recoveredBlock29Value3 := (recoveredBlock29Value2) zapBlanks.
    recoveredBlock29Value4 := (recoveredBlock29Value0) includes: (recoveredBlock29Value3).
    recoveredBlock29Value4
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ff800; bytecode file offset 0xbfc0e0"
!SGDBProxyManager methodsFor: 'recovered'!
libraryProxies
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := SGLibrary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:block280e95e0Arg1 | 
    | block280e95e0Value0 block280e95e0Value1 |
    block280e95e0Value0 := block280e95e0Arg1.
    block280e95e0Value1 := (block280e95e0Value0) printString.
    block280e95e0Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 |
    recoveredBlock33Value0 := recoveredLocal1.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (recoveredBlock33Value1) className.
    recoveredBlock33Value3 := (recoveredBlock33Value2) zapBlanks.
    recoveredBlock33Value4 := (recoveredBlock33Value0) includes: (recoveredBlock33Value3).
    recoveredBlock33Value4
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032e538; bytecode file offset 0xc2ae1c"
!SGDBProxyManager methodsFor: 'recovered'!
osLogicProxies
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := SGOperatingSystemLogic.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block280eca0cArg1 | 
    | block280eca0cValue0 block280eca0cValue1 |
    block280eca0cValue0 := block280eca0cArg1.
    block280eca0cValue1 := (block280eca0cValue0) printString.
    block280eca0cValue1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxies.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 |
    recoveredBlock39Value0 := recoveredLocal1.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := (recoveredBlock39Value1) className.
    recoveredBlock39Value3 := (recoveredBlock39Value2) zapBlanks.
    recoveredBlock39Value4 := (recoveredBlock39Value0) includes: (recoveredBlock39Value3).
    recoveredBlock39Value4
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032f348; bytecode file offset 0xc2bc20"
!SGDBProxyManager methodsFor: 'recovered'!
updateSDProxies: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) classNamesOfSDClasses.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := false.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) className.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isString.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 26] ifFalse: [recoveredBlock12PC := 53].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack1 := false.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) className.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) zapBlanks.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) includes: (recoveredBlock12Stack3).
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 40] ifFalse: [recoveredBlock12PC := 53].
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack2 := [:block280ecc04Arg1 | 
    nil
].
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) readKeyIfUndefined: (recoveredBlock12Stack2).
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) notNil.
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    (self) proxies: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203c0744; bytecode file offset 0xcbd038"
!SGDBProxyManager methodsFor: 'recovered'!
classNamesOfSDClasses
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := RBTopFolder.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) allSubclasses.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := [:block280f66fcArg1 | 
    | block280f66fcValue0 block280f66fcValue1 |
    block280f66fcValue0 := block280f66fcArg1.
    block280f66fcValue1 := (block280f66fcValue0) printString.
    block280f66fcValue1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := SGConfig.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) allSubclasses.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := [:block280f6720Arg1 | 
    | block280f6720Value0 block280f6720Value1 |
    block280f6720Value0 := block280f6720Arg1.
    block280f6720Value1 := (block280f6720Value0) printString.
    block280f6720Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := SGCodeContainerExternal.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := SGTopGraphicsBlockDB.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := SGOperatingSystemLogic.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := SGTextDocumentation.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := SGChannelProtocolModel.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203fb710; bytecode file offset 0xcf7ffc"
!SGDBProxyManager methodsFor: 'recovered'!
labelsForProxies: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack3 := [:block280f9d68Arg1 | 
    nil
].
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getObjectIfUndefined: (recoveredBlock13Stack3).
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredLocal3 := recoveredBlock13Stack3.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 86] ifFalse: [recoveredBlock13PC := 38].
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal3.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) existingItemBelongsTo.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack3.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 86] ifFalse: [recoveredBlock13PC := 50].
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal2.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) label.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack3 := SGReservedNames.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) defaultLabelName.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) ~= (recoveredBlock13Stack3).
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 64] ifFalse: [recoveredBlock13PC := 86].
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal3.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) labelForCompare.
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Stack3 := ' - '.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) , (recoveredBlock13Stack3).
            recoveredBlock13PC := 77.
        ].
        recoveredBlock13Step = 77 ifTrue: [
            recoveredBlock13Stack3 := recoveredLocal2.
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) pathName.
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) , (recoveredBlock13Stack3).
            recoveredBlock13PC := 84.
        ].
        recoveredBlock13Step = 84 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

