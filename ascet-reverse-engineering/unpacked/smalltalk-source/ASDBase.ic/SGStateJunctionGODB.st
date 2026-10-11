"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000651c; bytecode file offset 0x902de8"
!SGStateJunctionGODB methodsFor: 'recovered'!
checkLogic: recoveredArg1 specification: recoveredArg2 errorBlock: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2004ef78; bytecode file offset 0x94d048"
!SGStateJunctionGODB methodsFor: 'recovered'!
getXMLTag
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006c424; bytecode file offset 0x9692b0"
!SGStateJunctionGODB methodsFor: 'recovered'!
dynamicConnectors
    | recoveredValue0 |
    recoveredValue0 := dynamicConnectors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cdd0; bytecode file offset 0x969c04"
!SGStateJunctionGODB methodsFor: 'recovered'!
block
    | recoveredValue0 |
    recoveredValue0 := block.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b74c; bytecode file offset 0x988004"
!SGStateJunctionGODB methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := (recoveredValue0) at: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008fba4; bytecode file offset 0x98c464"
!SGStateJunctionGODB methodsFor: 'recovered'!
areaStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) block.
    recoveredValue1 := (recoveredValue0) at: (2).
    recoveredValue2 := (recoveredValue1) deepCopy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b905c; bytecode file offset 0x9b5914"
!SGStateJunctionGODB methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (1) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200baf40; bytecode file offset 0x9b7828"
!SGStateJunctionGODB methodsFor: 'recovered'!
internalWriteXMLAttrs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) iD.
    (recoveredValue0) attr: ('graphicOID') graphicOID: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bcf94; bytecode file offset 0x9b9850"
!SGStateJunctionGODB methodsFor: 'recovered'!
areaStyle: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) block.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (2) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c302c; bytecode file offset 0x9bfde0"
!SGStateJunctionGODB methodsFor: 'recovered'!
dynamicConnectors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dynamicConnectors := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c38f8; bytecode file offset 0x9c058c"
!SGStateJunctionGODB methodsFor: 'recovered'!
block: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    block := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011c3bc; bytecode file offset 0xa18c84"
!SGStateJunctionGODB methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super initialize.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new: (4).
    (recoveredValue1) block: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201788b0; bytecode file offset 0xa75178"
!SGStateJunctionGODB methodsFor: 'recovered'!
writeXML: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getXMLTag.
    (recoveredValue0) openComplex: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) internalWriteXMLAttrs: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (self) internalWriteXMLElements: (recoveredValue3) class: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) closeComplex.
    ^self
! !

"ASDBase.ic method 0x2029b664; bytecode file offset 0xb97f2c"
!SGStateJunctionGODB methodsFor: 'recovered'!
highestUsedGraphicalIdentifier
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iD.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) dynamicConnectors.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredLocal1.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) max: (recoveredBlock22Value1).
    recoveredBlock22Value3 := recoveredBlock22Value2.
    recoveredLocal1 := recoveredBlock22Value3.
    recoveredBlock22Value2
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046cbcc; bytecode file offset 0xd694d8"
!SGStateJunctionGODB methodsFor: 'recovered'!
internalWriteXMLElements: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    (self) internalWriteXMLView: (recoveredValue0).
    recoveredValue1 := own.
    recoveredValue2 := (recoveredValue1) at: (3).
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) writeXML: (recoveredBlock14Value1) tag: ('LineStyle').
    recoveredBlock14Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := block.
    recoveredValue6 := (recoveredValue5) at: (2).
    recoveredValue7 := (recoveredValue6) color.
    (recoveredValue4) complex: ('FillColor') color: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) size.
    (recoveredValue8) complex: ('Size') size: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (self) position.
    (recoveredValue10) complex: ('Position') point: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    (recoveredValue12) openComplex: ('Interfaces').
    recoveredValue13 := dynamicConnectors.
    recoveredValue14 := [:recoveredBlock74Arg1 :recoveredBlock74Arg2 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 recoveredBlock74Value4 recoveredBlock74Value5 recoveredBlock74Value6 |
    recoveredBlock74Value0 := recoveredArg1.
    (recoveredBlock74Value0) openComplex: ('Connector').
    recoveredBlock74Value1 := recoveredArg1.
    recoveredBlock74Value2 := recoveredBlock74Arg1.
    (recoveredBlock74Value1) attr: ('graphicOID') graphicOID: (recoveredBlock74Value2).
    recoveredBlock74Value3 := recoveredArg1.
    recoveredBlock74Value4 := recoveredBlock74Arg2.
    (recoveredBlock74Value3) complex: ('Position') point: (recoveredBlock74Value4).
    recoveredBlock74Value5 := recoveredArg1.
    recoveredBlock74Value6 := (recoveredBlock74Value5) closeComplex.
    recoveredBlock74Value6
].
    (recoveredValue13) keysAndValuesDo: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    (recoveredValue15) closeComplex.
    recoveredValue16 := ('todo') notNil.
    ^self
! !

