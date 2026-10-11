"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012918; bytecode file offset 0x912098"
!SGHierarchyStateGODB methodsFor: 'recovered'!
stateGOClass
    | recoveredValue0 |
    recoveredValue0 := SGHierarchyStateGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001dfb4; bytecode file offset 0x92209c"
!SGHierarchyStateGODB methodsFor: 'recovered'!
getXMLTag
    ^'HierarchyState'
! !

"ASDBase.ic method 0x2006ea20; bytecode file offset 0x96b41c"
!SGHierarchyStateGODB methodsFor: 'recovered'!
hierarchyConnectors
    | recoveredValue0 |
    recoveredValue0 := hierarchyConnectors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074c94; bytecode file offset 0x9757c8"
!SGHierarchyStateGODB methodsFor: 'recovered'!
isHierachyStateBlockDB
    ^true
! !

"ASDBase.ic method 0x200c4ee8; bytecode file offset 0x9c1afc"
!SGHierarchyStateGODB methodsFor: 'recovered'!
hierarchyConnectors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hierarchyConnectors := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010f1ec; bytecode file offset 0xa0bab0"
!SGHierarchyStateGODB methodsFor: 'recovered'!
updateSpecial: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super updateSpecial: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) hierarchyConnectors.
    (recoveredValue1) createHierarchyConnectors: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20235930; bytecode file offset 0xb32200"
!SGHierarchyStateGODB methodsFor: 'recovered'!
writeXML: recoveredArg1 class: recoveredArg2 block: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getXMLTag.
    (recoveredValue0) openComplex: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) internalWriteXMLAttrs: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (self) internalWriteXMLElements: (recoveredValue3) class: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) openComplex: ('Contents').
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue6) internalWriteXMLStructure: (recoveredValue7) class: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) closeComplex.
    recoveredValue10 := recoveredArg1.
    (recoveredValue10) closeComplex.
    ^self
! !

"ASDBase.ic method 0x202c727c; bytecode file offset 0xbc3b4c"
!SGHierarchyStateGODB methodsFor: 'recovered'!
internalWriteXMLElements: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super internalWriteXMLElements: (recoveredValue0) class: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) openComplex: ('Ports').
    recoveredValue3 := hierarchyConnectors.
    recoveredValue4 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := recoveredArg1.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := recoveredBlock23Arg2.
    recoveredBlock23Value3 := (self) internalWriteXML: (recoveredBlock23Value0) name: (recoveredBlock23Value1) pin: (recoveredBlock23Value2).
    recoveredBlock23Value3
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) closeComplex.
    ^self
! !

"ASDBase.ic method 0x202f7cd4; bytecode file offset 0xbf45a4"
!SGHierarchyStateGODB methodsFor: 'recovered'!
highestUsedGraphicalIdentifier
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super highestUsedGraphicalIdentifier.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyConnectors.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (recoveredBlock26Value1) at: (1).
    recoveredBlock26Value3 := (recoveredBlock26Value0) max: (recoveredBlock26Value2).
    recoveredBlock26Value4 := recoveredBlock26Value3.
    recoveredLocal1 := recoveredBlock26Value4.
    recoveredBlock26Value3
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

