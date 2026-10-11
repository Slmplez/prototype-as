"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003e1b8; bytecode file offset 0x93bf94"
!SGBlockDB methodsFor: 'recovered'!
sequences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006af2c; bytecode file offset 0x967a18"
!SGBlockDB methodsFor: 'recovered'!
block
    | recoveredValue0 |
    recoveredValue0 := block.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b4e4; bytecode file offset 0x987d9c"
!SGBlockDB methodsFor: 'recovered'!
actualNameVisibility
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := (recoveredValue0) at: (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b4fc; bytecode file offset 0x987db4"
!SGBlockDB methodsFor: 'recovered'!
namePosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := (recoveredValue0) at: (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b514; bytecode file offset 0x987dcc"
!SGBlockDB methodsFor: 'recovered'!
blockColor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := (recoveredValue0) at: (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b8f18; bytecode file offset 0x9b57d0"
!SGBlockDB methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (1) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b8f30; bytecode file offset 0x9b57e8"
!SGBlockDB methodsFor: 'recovered'!
actualNameVisibility: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (2) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b8f48; bytecode file offset 0x9b5800"
!SGBlockDB methodsFor: 'recovered'!
namePosition: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (3) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b8f60; bytecode file offset 0x9b5818"
!SGBlockDB methodsFor: 'recovered'!
blockColor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (4) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b8f78; bytecode file offset 0x9b5830"
!SGBlockDB methodsFor: 'recovered'!
frameVisibility: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := block.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (5) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c1cbc; bytecode file offset 0x9beac8"
!SGBlockDB methodsFor: 'recovered'!
block: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    block := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011c408; bytecode file offset 0xa18cd0"
!SGBlockDB methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super initialize.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new: (6).
    (recoveredValue1) block: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2017f500; bytecode file offset 0xa7bdc0"
!SGBlockDB methodsFor: 'recovered'!
size
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := block.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280cf798Value0 |
    block280cf798Value0 := (40) @ (40).
    block280cf798Value0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ea590; bytecode file offset 0xce6e80"
!SGBlockDB methodsFor: 'recovered'!
internalWriteXMLPin: recoveredArg1 posAttr: recoveredArg2 pin: recoveredArg3 supportsTempVar: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'graphicOID'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) graphicOID: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) enum: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'visibility'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'nameVisibility'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'tempVar'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := [
    false
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack6 := [:block280f8cd0Arg1 | 
    | block280f8cd0Stack0 block280f8cd0Stack1 block280f8cd0Stack2 block280f8cd0Stack3 block280f8cd0PC block280f8cd0Step block280f8cd0Done block280f8cd0Result |
    block280f8cd0Stack0 := self.
    block280f8cd0PC := 4.
    block280f8cd0Done := false.
    [block280f8cd0Done not] whileTrue: [
        block280f8cd0Step := block280f8cd0PC.
        block280f8cd0Step = 4 ifTrue: [
            block280f8cd0Stack1 := block280f8cd0Arg1.
            block280f8cd0PC := 5.
        ].
        block280f8cd0Step = 5 ifTrue: [
            block280f8cd0Stack2 := [
    false
].
            block280f8cd0PC := 7.
        ].
        block280f8cd0Step = 7 ifTrue: [
            block280f8cd0PC := 12.
        ].
        block280f8cd0Step = 12 ifTrue: [
            block280f8cd0Stack1 := (block280f8cd0Stack1) ifNil: (block280f8cd0Stack2).
            block280f8cd0PC := 14.
        ].
        block280f8cd0Step = 14 ifTrue: [
            block280f8cd0Result := block280f8cd0Stack1.
            block280f8cd0Done := true.
        ].
    ].
    block280f8cd0Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5) ifPresent: (recoveredStack6).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'Position'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) complex: (recoveredStack2) point: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20526d70; bytecode file offset 0xe23678"
!SGBlockDB methodsFor: 'recovered'!
internalWriteXMLGetSetPort: recoveredArg1 class: recoveredArg2 refClass: recoveredArg3 methodId: recoveredArg4 pins: recoveredArg5 mode: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'set'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := #('set' '_set_implicit' 'MemberSetPort' true).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := #('get' '_get_implicit' 'MemberGetPort' false).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:recoveredBlock58Arg1 :recoveredBlock58Arg2 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredLocal8 := recoveredBlock58Value0.
    recoveredBlock58Value1 := recoveredBlock58Arg2.
    recoveredBlock58Value2 := recoveredBlock58Value1.
    recoveredLocal7 := recoveredBlock58Value2.
    recoveredBlock58Value1
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := ASDHierarchicalByteArray.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) endsWith: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 115] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'Call_92319'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'direction'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := (recoveredStack4) not.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) internalWriteXMLPin: (recoveredStack1) posAttr: (recoveredStack2) pin: (recoveredStack3) supportsTempVar: (recoveredStack4).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) localIDChain: (recoveredStack1) item: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) sequences.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) sequenceCall: (recoveredStack2) sgClass: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059f11c; bytecode file offset 0xe9ba60"
!SGBlockDB methodsFor: 'recovered'!
internalWriteXML: recoveredArg1 ports: recoveredArg2 class: recoveredArg3 refClass: recoveredArg4 mode: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'set'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'MemberSetPort'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'MemberGetPort'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'set'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := '_set_implicit'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := '_get_implicit'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := [:recoveredBlock48Arg1 :recoveredBlock48Arg2 | 
    | recoveredBlock48Local1 recoveredBlock48Local2 recoveredBlock48Stack0 recoveredBlock48Stack1 recoveredBlock48Stack2 recoveredBlock48Stack3 recoveredBlock48Stack4 recoveredBlock48Stack5 recoveredBlock48Stack6 recoveredBlock48Stack7 recoveredBlock48Stack8 recoveredBlock48PC recoveredBlock48Step recoveredBlock48Done recoveredBlock48Result |
    recoveredBlock48Stack0 := self.
    recoveredBlock48PC := 54.
    recoveredBlock48Done := false.
    [recoveredBlock48Done not] whileTrue: [
        recoveredBlock48Step := recoveredBlock48PC.
        recoveredBlock48Step = 54 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Arg1.
            recoveredBlock48PC := 55.
        ].
        recoveredBlock48Step = 55 ifTrue: [
            recoveredBlock48Stack2 := EsString.
            recoveredBlock48PC := 57.
        ].
        recoveredBlock48Step = 57 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) isKindOf: (recoveredBlock48Stack2).
            recoveredBlock48PC := 59.
        ].
        recoveredBlock48Step = 59 ifTrue: [
            (recoveredBlock48Stack1) ifTrue: [recoveredBlock48PC := 62] ifFalse: [recoveredBlock48PC := 132].
        ].
        recoveredBlock48Step = 62 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Arg1.
            recoveredBlock48PC := 63.
        ].
        recoveredBlock48Step = 63 ifTrue: [
            recoveredBlock48Stack2 := recoveredLocal2.
            recoveredBlock48PC := 66.
        ].
        recoveredBlock48Step = 66 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) endsWith: (recoveredBlock48Stack2).
            recoveredBlock48PC := 68.
        ].
        recoveredBlock48Step = 68 ifTrue: [
            (recoveredBlock48Stack1) ifTrue: [recoveredBlock48PC := 72] ifFalse: [recoveredBlock48PC := 132].
        ].
        recoveredBlock48Step = 72 ifTrue: [
            recoveredBlock48Stack1 := 'Possibly invalid data -> old way of storing pins found!!'.
            recoveredBlock48PC := 74.
        ].
        recoveredBlock48Step = 74 ifTrue: [
            recoveredBlock48Local1 := recoveredBlock48Stack1.
            recoveredBlock48PC := 75.
        ].
        recoveredBlock48Step = 75 ifTrue: [
            recoveredBlock48Stack1 := self.
            recoveredBlock48PC := 76.
        ].
        recoveredBlock48Step = 76 ifTrue: [
            recoveredBlock48Stack2 := [
    false
].
            recoveredBlock48PC := 78.
        ].
        recoveredBlock48Step = 78 ifTrue: [
            recoveredBlock48PC := 84.
        ].
        recoveredBlock48Step = 84 ifTrue: [
            recoveredBlock48Stack3 := recoveredBlock48Local1.
            recoveredBlock48PC := 85.
        ].
        recoveredBlock48Step = 85 ifTrue: [
            (recoveredBlock48Stack1) runtimeAssert: (recoveredBlock48Stack2) additionalInfo: (recoveredBlock48Stack3).
            recoveredBlock48PC := 87.
        ].
        recoveredBlock48Step = 87 ifTrue: [
            recoveredBlock48Stack1 := SGMonitorStreamDummy.
            recoveredBlock48PC := 89.
        ].
        recoveredBlock48Step = 89 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) create.
            recoveredBlock48PC := 91.
        ].
        recoveredBlock48Step = 91 ifTrue: [
            recoveredBlock48Local2 := recoveredBlock48Stack1.
            recoveredBlock48PC := 92.
        ].
        recoveredBlock48Step = 92 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Local2.
            recoveredBlock48PC := 93.
        ].
        recoveredBlock48Step = 93 ifTrue: [
            recoveredBlock48Stack2 := recoveredArg3.
            recoveredBlock48PC := 96.
        ].
        recoveredBlock48Step = 96 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) completeLibraryPath.
            recoveredBlock48PC := 98.
        ].
        recoveredBlock48Step = 98 ifTrue: [
            recoveredBlock48Stack3 := ' - '.
            recoveredBlock48PC := 100.
        ].
        recoveredBlock48Step = 100 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) , (recoveredBlock48Stack3).
            recoveredBlock48PC := 102.
        ].
        recoveredBlock48Step = 102 ifTrue: [
            recoveredBlock48Stack3 := recoveredBlock48Local1.
            recoveredBlock48PC := 103.
        ].
        recoveredBlock48Step = 103 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) , (recoveredBlock48Stack3).
            recoveredBlock48PC := 105.
        ].
        recoveredBlock48Step = 105 ifTrue: [
            (recoveredBlock48Stack1) addWarningText: (recoveredBlock48Stack2).
            recoveredBlock48PC := 107.
        ].
        recoveredBlock48Step = 107 ifTrue: [
            recoveredBlock48Stack1 := self.
            recoveredBlock48PC := 108.
        ].
        recoveredBlock48Step = 108 ifTrue: [
            recoveredBlock48Stack2 := recoveredArg1.
            recoveredBlock48PC := 111.
        ].
        recoveredBlock48Step = 111 ifTrue: [
            recoveredBlock48Stack3 := recoveredArg3.
            recoveredBlock48PC := 114.
        ].
        recoveredBlock48Step = 114 ifTrue: [
            recoveredBlock48Stack4 := recoveredArg4.
            recoveredBlock48PC := 117.
        ].
        recoveredBlock48Step = 117 ifTrue: [
            recoveredBlock48Stack5 := recoveredBlock48Arg1.
            recoveredBlock48PC := 118.
        ].
        recoveredBlock48Step = 118 ifTrue: [
            recoveredBlock48Stack6 := recoveredBlock48Arg2.
            recoveredBlock48PC := 119.
        ].
        recoveredBlock48Step = 119 ifTrue: [
            recoveredBlock48Stack7 := recoveredArg5.
            recoveredBlock48PC := 122.
        ].
        recoveredBlock48Step = 122 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) internalWriteXMLGetSetPort: (recoveredBlock48Stack2) class: (recoveredBlock48Stack3) refClass: (recoveredBlock48Stack4) methodId: (recoveredBlock48Stack5) pins: (recoveredBlock48Stack6) mode: (recoveredBlock48Stack7).
            recoveredBlock48PC := 125.
        ].
        recoveredBlock48Step = 125 ifTrue: [
            recoveredBlock48Stack2 := nil.
            recoveredBlock48PC := 126.
        ].
        recoveredBlock48Step = 126 ifTrue: [
            recoveredBlock48Stack3 := recoveredBlock48Stack2.
            recoveredBlock48PC := 127.
        ].
        recoveredBlock48Step = 127 ifTrue: [
            recoveredBlock48Local2 := recoveredBlock48Stack3.
            recoveredBlock48PC := 128.
        ].
        recoveredBlock48Step = 128 ifTrue: [
            recoveredBlock48Local1 := recoveredBlock48Stack2.
            recoveredBlock48PC := 129.
        ].
        recoveredBlock48Step = 129 ifTrue: [
            recoveredBlock48PC := 287.
        ].
        recoveredBlock48Step = 132 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Arg1.
            recoveredBlock48PC := 133.
        ].
        recoveredBlock48Step = 133 ifTrue: [
            recoveredBlock48Stack2 := ASDHierarchicalByteArray.
            recoveredBlock48PC := 135.
        ].
        recoveredBlock48Step = 135 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) isKindOf: (recoveredBlock48Stack2).
            recoveredBlock48PC := 137.
        ].
        recoveredBlock48Step = 137 ifTrue: [
            (recoveredBlock48Stack1) ifTrue: [recoveredBlock48PC := 160] ifFalse: [recoveredBlock48PC := 140].
        ].
        recoveredBlock48Step = 140 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg4.
            recoveredBlock48PC := 143.
        ].
        recoveredBlock48Step = 143 ifTrue: [
            recoveredBlock48Stack2 := SGItemWithSpec.
            recoveredBlock48PC := 145.
        ].
        recoveredBlock48Step = 145 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) isKindOf: (recoveredBlock48Stack2).
            recoveredBlock48PC := 147.
        ].
        recoveredBlock48Step = 147 ifTrue: [
            (recoveredBlock48Stack1) ifTrue: [recoveredBlock48PC := 150] ifFalse: [recoveredBlock48PC := 246].
        ].
        recoveredBlock48Step = 150 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg4.
            recoveredBlock48PC := 153.
        ].
        recoveredBlock48Step = 153 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 154.
        ].
        recoveredBlock48Step = 154 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) elementAliasName: (recoveredBlock48Stack2).
            recoveredBlock48PC := 156.
        ].
        recoveredBlock48Step = 156 ifTrue: [
            (recoveredBlock48Stack1 == nil) ifTrue: [recoveredBlock48PC := 246] ifFalse: [recoveredBlock48PC := 160].
        ].
        recoveredBlock48Step = 160 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg1.
            recoveredBlock48PC := 163.
        ].
        recoveredBlock48Step = 163 ifTrue: [
            recoveredBlock48Stack2 := recoveredLocal1.
            recoveredBlock48PC := 166.
        ].
        recoveredBlock48Step = 166 ifTrue: [
            (recoveredBlock48Stack1) openComplex: (recoveredBlock48Stack2).
            recoveredBlock48PC := 168.
        ].
        recoveredBlock48Step = 168 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg1.
            recoveredBlock48PC := 171.
        ].
        recoveredBlock48Step = 171 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 172.
        ].
        recoveredBlock48Step = 172 ifTrue: [
            recoveredBlock48Stack3 := recoveredArg4.
            recoveredBlock48PC := 175.
        ].
        recoveredBlock48Step = 175 ifTrue: [
            (recoveredBlock48Stack1) localIDChain: (recoveredBlock48Stack2) item: (recoveredBlock48Stack3).
            recoveredBlock48PC := 177.
        ].
        recoveredBlock48Step = 177 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Arg2.
            recoveredBlock48PC := 178.
        ].
        recoveredBlock48Step = 178 ifTrue: [
            recoveredBlock48Stack2 := [:recoveredBlock48Block178Arg1 | 
    | recoveredBlock48Block178Value0 recoveredBlock48Block178Value1 recoveredBlock48Block178Value2 recoveredBlock48Block178Value3 recoveredBlock48Block178Value4 |
    recoveredBlock48Block178Value0 := recoveredArg1.
    recoveredBlock48Block178Value1 := recoveredBlock48Block178Arg1.
    recoveredBlock48Block178Value2 := recoveredArg5.
    recoveredBlock48Block178Value3 := (recoveredBlock48Block178Value2) == ('get').
    recoveredBlock48Block178Value4 := (self) internalWriteXMLPin: (recoveredBlock48Block178Value0) posAttr: ('direction') pin: (recoveredBlock48Block178Value1) supportsTempVar: (recoveredBlock48Block178Value3).
    recoveredBlock48Block178Value4
].
            recoveredBlock48PC := 200.
        ].
        recoveredBlock48Step = 200 ifTrue: [
            (recoveredBlock48Stack1) do: (recoveredBlock48Stack2).
            recoveredBlock48PC := 202.
        ].
        recoveredBlock48Step = 202 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg5.
            recoveredBlock48PC := 205.
        ].
        recoveredBlock48Step = 205 ifTrue: [
            recoveredBlock48Stack2 := 'set'.
            recoveredBlock48PC := 207.
        ].
        recoveredBlock48Step = 207 ifTrue: [
            (recoveredBlock48Stack1 ~~ recoveredBlock48Stack2) ifTrue: [recoveredBlock48PC := 237] ifFalse: [recoveredBlock48PC := 210].
        ].
        recoveredBlock48Step = 210 ifTrue: [
            recoveredBlock48Stack1 := self.
            recoveredBlock48PC := 211.
        ].
        recoveredBlock48Step = 211 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) sequences.
            recoveredBlock48PC := 213.
        ].
        recoveredBlock48Step = 213 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 214.
        ].
        recoveredBlock48Step = 214 ifTrue: [
            recoveredBlock48Stack3 := [].
            recoveredBlock48PC := 216.
        ].
        recoveredBlock48Step = 216 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) at: (recoveredBlock48Stack2) ifAbsent: (recoveredBlock48Stack3).
            recoveredBlock48PC := 218.
        ].
        recoveredBlock48Step = 218 ifTrue: [
            recoveredBlock48Local2 := recoveredBlock48Stack1.
            recoveredBlock48PC := 219.
        ].
        recoveredBlock48Step = 219 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Local2.
            recoveredBlock48PC := 220.
        ].
        recoveredBlock48Step = 220 ifTrue: [
            (recoveredBlock48Stack1 == nil) ifTrue: [recoveredBlock48PC := 235] ifFalse: [recoveredBlock48PC := 224].
        ].
        recoveredBlock48Step = 224 ifTrue: [
            recoveredBlock48Stack1 := self.
            recoveredBlock48PC := 225.
        ].
        recoveredBlock48Step = 225 ifTrue: [
            recoveredBlock48Stack2 := recoveredArg1.
            recoveredBlock48PC := 228.
        ].
        recoveredBlock48Step = 228 ifTrue: [
            recoveredBlock48Stack3 := recoveredBlock48Local2.
            recoveredBlock48PC := 229.
        ].
        recoveredBlock48Step = 229 ifTrue: [
            recoveredBlock48Stack4 := recoveredArg3.
            recoveredBlock48PC := 232.
        ].
        recoveredBlock48Step = 232 ifTrue: [
            (recoveredBlock48Stack1) internalWriteXML: (recoveredBlock48Stack2) sequenceCall: (recoveredBlock48Stack3) sgClass: (recoveredBlock48Stack4).
            recoveredBlock48PC := 235.
        ].
        recoveredBlock48Step = 235 ifTrue: [
            recoveredBlock48Stack1 := nil.
            recoveredBlock48PC := 236.
        ].
        recoveredBlock48Step = 236 ifTrue: [
            recoveredBlock48Local2 := recoveredBlock48Stack1.
            recoveredBlock48PC := 237.
        ].
        recoveredBlock48Step = 237 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg1.
            recoveredBlock48PC := 240.
        ].
        recoveredBlock48Step = 240 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) closeComplex.
            recoveredBlock48PC := 242.
        ].
        recoveredBlock48Step = 242 ifTrue: [
            recoveredBlock48PC := 287.
        ].
        recoveredBlock48Step = 246 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg5.
            recoveredBlock48PC := 249.
        ].
        recoveredBlock48Step = 249 ifTrue: [
            recoveredBlock48Stack2 := 'set'.
            recoveredBlock48PC := 251.
        ].
        recoveredBlock48Step = 251 ifTrue: [
            (recoveredBlock48Stack1 ~~ recoveredBlock48Stack2) ifTrue: [recoveredBlock48PC := 272] ifFalse: [recoveredBlock48PC := 254].
        ].
        recoveredBlock48Step = 254 ifTrue: [
            recoveredBlock48Stack1 := self.
            recoveredBlock48PC := 255.
        ].
        recoveredBlock48Step = 255 ifTrue: [
            recoveredBlock48Stack2 := recoveredArg1.
            recoveredBlock48PC := 258.
        ].
        recoveredBlock48Step = 258 ifTrue: [
            recoveredBlock48Stack3 := recoveredArg3.
            recoveredBlock48PC := 261.
        ].
        recoveredBlock48Step = 261 ifTrue: [
            recoveredBlock48Stack4 := recoveredArg4.
            recoveredBlock48PC := 264.
        ].
        recoveredBlock48Step = 264 ifTrue: [
            recoveredBlock48Stack5 := recoveredBlock48Arg1.
            recoveredBlock48PC := 265.
        ].
        recoveredBlock48Step = 265 ifTrue: [
            recoveredBlock48Stack6 := recoveredBlock48Arg2.
            recoveredBlock48PC := 266.
        ].
        recoveredBlock48Step = 266 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) internalWriteXMLSelectorPort: (recoveredBlock48Stack2) class: (recoveredBlock48Stack3) refClass: (recoveredBlock48Stack4) methodId: (recoveredBlock48Stack5) pins: (recoveredBlock48Stack6).
            recoveredBlock48PC := 269.
        ].
        recoveredBlock48Step = 269 ifTrue: [
            recoveredBlock48PC := 287.
        ].
        recoveredBlock48Step = 272 ifTrue: [
            recoveredBlock48Stack1 := self.
            recoveredBlock48PC := 273.
        ].
        recoveredBlock48Step = 273 ifTrue: [
            recoveredBlock48Stack2 := recoveredArg1.
            recoveredBlock48PC := 276.
        ].
        recoveredBlock48Step = 276 ifTrue: [
            recoveredBlock48Stack3 := recoveredArg3.
            recoveredBlock48PC := 279.
        ].
        recoveredBlock48Step = 279 ifTrue: [
            recoveredBlock48Stack4 := recoveredArg4.
            recoveredBlock48PC := 282.
        ].
        recoveredBlock48Step = 282 ifTrue: [
            recoveredBlock48Stack5 := recoveredBlock48Arg1.
            recoveredBlock48PC := 283.
        ].
        recoveredBlock48Step = 283 ifTrue: [
            recoveredBlock48Stack6 := recoveredBlock48Arg2.
            recoveredBlock48PC := 284.
        ].
        recoveredBlock48Step = 284 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) internalWriteXMLReturnPort: (recoveredBlock48Stack2) class: (recoveredBlock48Stack3) refClass: (recoveredBlock48Stack4) methodId: (recoveredBlock48Stack5) pins: (recoveredBlock48Stack6).
            recoveredBlock48PC := 287.
        ].
        recoveredBlock48Step = 287 ifTrue: [
            recoveredBlock48Result := recoveredBlock48Stack1.
            recoveredBlock48Done := true.
        ].
    ].
    recoveredBlock48Result
].
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) withSortedKeysIn: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ba81c; bytecode file offset 0xeb7158"
!SGBlockDB methodsFor: 'recovered'!
internalWriteXMLSelectorPort: recoveredArg1 class: recoveredArg2 refClass: recoveredArg3 methodId: recoveredArg4 pins: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'get'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) oidFromString: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'Call_88661'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'MethodPort'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'methodName'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'defaultMethod'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := '--Absent--'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'methodName'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'methodOID'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) localId: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 'defaultMethod'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequences.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) sequenceCall: (recoveredStack2) sgClass: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := [:recoveredBlock189Arg1 :recoveredBlock189Arg2 | 
    | recoveredBlock189Stack0 recoveredBlock189Stack1 recoveredBlock189Stack2 recoveredBlock189Stack3 recoveredBlock189Stack4 recoveredBlock189Stack5 recoveredBlock189Stack6 recoveredBlock189PC recoveredBlock189Step recoveredBlock189Done recoveredBlock189Result |
    recoveredBlock189Stack0 := self.
    recoveredBlock189PC := 196.
    recoveredBlock189Done := false.
    [recoveredBlock189Done not] whileTrue: [
        recoveredBlock189Step := recoveredBlock189PC.
        recoveredBlock189Step = 196 ifTrue: [
            recoveredBlock189Stack1 := recoveredBlock189Arg1.
            recoveredBlock189PC := 197.
        ].
        recoveredBlock189Step = 197 ifTrue: [
            recoveredBlock189Stack2 := String.
            recoveredBlock189PC := 199.
        ].
        recoveredBlock189Step = 199 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) isKindOf: (recoveredBlock189Stack2).
            recoveredBlock189PC := 200.
        ].
        recoveredBlock189Step = 200 ifTrue: [
            (recoveredBlock189Stack1) ifTrue: [recoveredBlock189PC := 254] ifFalse: [recoveredBlock189PC := 204].
        ].
        recoveredBlock189Step = 204 ifTrue: [
            recoveredBlock189Stack1 := recoveredBlock189Arg1.
            recoveredBlock189PC := 205.
        ].
        recoveredBlock189Step = 205 ifTrue: [
            recoveredBlock189Stack2 := recoveredLocal1.
            recoveredBlock189PC := 208.
        ].
        recoveredBlock189Step = 208 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) = (recoveredBlock189Stack2).
            recoveredBlock189PC := 209.
        ].
        recoveredBlock189Step = 209 ifTrue: [
            (recoveredBlock189Stack1) ifTrue: [recoveredBlock189PC := 212] ifFalse: [recoveredBlock189PC := 254].
        ].
        recoveredBlock189Step = 212 ifTrue: [
            recoveredBlock189Stack1 := recoveredArg5.
            recoveredBlock189PC := 215.
        ].
        recoveredBlock189Step = 215 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) size.
            recoveredBlock189PC := 217.
        ].
        recoveredBlock189Step = 217 ifTrue: [
            recoveredBlock189Stack2 := 1.
            recoveredBlock189PC := 219.
        ].
        recoveredBlock189Step = 219 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) ~= (recoveredBlock189Stack2).
            recoveredBlock189PC := 220.
        ].
        recoveredBlock189Step = 220 ifTrue: [
            (recoveredBlock189Stack1) ifTrue: [recoveredBlock189PC := 224] ifFalse: [recoveredBlock189PC := 227].
        ].
        recoveredBlock189Step = 224 ifTrue: [
            recoveredBlock189Stack1 := self.
            recoveredBlock189PC := 225.
        ].
        recoveredBlock189Step = 225 ifTrue: [
            (recoveredBlock189Stack1) halt.
            recoveredBlock189PC := 227.
        ].
        recoveredBlock189Step = 227 ifTrue: [
            recoveredBlock189Stack1 := recoveredArg1.
            recoveredBlock189PC := 230.
        ].
        recoveredBlock189Step = 230 ifTrue: [
            recoveredBlock189Stack2 := 'TriggerPort'.
            recoveredBlock189PC := 232.
        ].
        recoveredBlock189Step = 232 ifTrue: [
            (recoveredBlock189Stack1) openComplex: (recoveredBlock189Stack2).
            recoveredBlock189PC := 234.
        ].
        recoveredBlock189Step = 234 ifTrue: [
            recoveredBlock189Stack1 := self.
            recoveredBlock189PC := 235.
        ].
        recoveredBlock189Step = 235 ifTrue: [
            recoveredBlock189Stack2 := recoveredArg1.
            recoveredBlock189PC := 238.
        ].
        recoveredBlock189Step = 238 ifTrue: [
            recoveredBlock189Stack3 := 'direction'.
            recoveredBlock189PC := 240.
        ].
        recoveredBlock189Step = 240 ifTrue: [
            recoveredBlock189Stack4 := recoveredBlock189Arg2.
            recoveredBlock189PC := 241.
        ].
        recoveredBlock189Step = 241 ifTrue: [
            recoveredBlock189Stack5 := false.
            recoveredBlock189PC := 242.
        ].
        recoveredBlock189Step = 242 ifTrue: [
            (recoveredBlock189Stack1) internalWriteXMLPin: (recoveredBlock189Stack2) posAttr: (recoveredBlock189Stack3) pin: (recoveredBlock189Stack4) supportsTempVar: (recoveredBlock189Stack5).
            recoveredBlock189PC := 245.
        ].
        recoveredBlock189Step = 245 ifTrue: [
            recoveredBlock189Stack1 := recoveredArg1.
            recoveredBlock189PC := 248.
        ].
        recoveredBlock189Step = 248 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) closeComplex.
            recoveredBlock189PC := 250.
        ].
        recoveredBlock189Step = 250 ifTrue: [
            recoveredBlock189PC := 310.
        ].
        recoveredBlock189Step = 254 ifTrue: [
            recoveredBlock189Stack1 := recoveredArg1.
            recoveredBlock189PC := 257.
        ].
        recoveredBlock189Step = 257 ifTrue: [
            recoveredBlock189Stack2 := 'SelectorPort'.
            recoveredBlock189PC := 259.
        ].
        recoveredBlock189Step = 259 ifTrue: [
            (recoveredBlock189Stack1) openComplex: (recoveredBlock189Stack2).
            recoveredBlock189PC := 261.
        ].
        recoveredBlock189Step = 261 ifTrue: [
            recoveredBlock189Stack1 := self.
            recoveredBlock189PC := 262.
        ].
        recoveredBlock189Step = 262 ifTrue: [
            recoveredBlock189Stack2 := recoveredArg1.
            recoveredBlock189PC := 265.
        ].
        recoveredBlock189Step = 265 ifTrue: [
            recoveredBlock189Stack3 := 'direction'.
            recoveredBlock189PC := 267.
        ].
        recoveredBlock189Step = 267 ifTrue: [
            recoveredBlock189Stack4 := recoveredBlock189Arg2.
            recoveredBlock189PC := 268.
        ].
        recoveredBlock189Step = 268 ifTrue: [
            recoveredBlock189Stack5 := false.
            recoveredBlock189PC := 269.
        ].
        recoveredBlock189Step = 269 ifTrue: [
            (recoveredBlock189Stack1) internalWriteXMLPin: (recoveredBlock189Stack2) posAttr: (recoveredBlock189Stack3) pin: (recoveredBlock189Stack4) supportsTempVar: (recoveredBlock189Stack5).
            recoveredBlock189PC := 272.
        ].
        recoveredBlock189Step = 272 ifTrue: [
            recoveredBlock189Stack1 := recoveredBlock189Arg1.
            recoveredBlock189PC := 273.
        ].
        recoveredBlock189Step = 273 ifTrue: [
            recoveredBlock189Stack2 := String.
            recoveredBlock189PC := 275.
        ].
        recoveredBlock189Step = 275 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) isKindOf: (recoveredBlock189Stack2).
            recoveredBlock189PC := 276.
        ].
        recoveredBlock189Step = 276 ifTrue: [
            (recoveredBlock189Stack1) ifTrue: [recoveredBlock189PC := 280] ifFalse: [recoveredBlock189PC := 292].
        ].
        recoveredBlock189Step = 280 ifTrue: [
            recoveredBlock189Stack1 := recoveredArg1.
            recoveredBlock189PC := 283.
        ].
        recoveredBlock189Step = 283 ifTrue: [
            recoveredBlock189Stack2 := 'name'.
            recoveredBlock189PC := 285.
        ].
        recoveredBlock189Step = 285 ifTrue: [
            recoveredBlock189Stack3 := recoveredBlock189Arg1.
            recoveredBlock189PC := 286.
        ].
        recoveredBlock189Step = 286 ifTrue: [
            (recoveredBlock189Stack1) attr: (recoveredBlock189Stack2) string: (recoveredBlock189Stack3).
            recoveredBlock189PC := 288.
        ].
        recoveredBlock189Step = 288 ifTrue: [
            recoveredBlock189PC := 305.
        ].
        recoveredBlock189Step = 292 ifTrue: [
            recoveredBlock189Stack1 := recoveredArg1.
            recoveredBlock189PC := 295.
        ].
        recoveredBlock189Step = 295 ifTrue: [
            recoveredBlock189Stack2 := recoveredBlock189Arg1.
            recoveredBlock189PC := 296.
        ].
        recoveredBlock189Step = 296 ifTrue: [
            recoveredBlock189Stack3 := recoveredLocal2.
            recoveredBlock189PC := 299.
        ].
        recoveredBlock189Step = 299 ifTrue: [
            (recoveredBlock189Stack1) localIDChain: (recoveredBlock189Stack2) item: (recoveredBlock189Stack3).
            recoveredBlock189PC := 301.
        ].
        recoveredBlock189Step = 301 ifTrue: [
            recoveredBlock189Stack1 := 'removeMe'.
            recoveredBlock189PC := 303.
        ].
        recoveredBlock189Step = 303 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) notNil.
            recoveredBlock189PC := 304.
        ].
        recoveredBlock189Step = 304 ifTrue: [
            recoveredBlock189PC := 305.
        ].
        recoveredBlock189Step = 305 ifTrue: [
            recoveredBlock189Stack1 := recoveredArg1.
            recoveredBlock189PC := 308.
        ].
        recoveredBlock189Step = 308 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) closeComplex.
            recoveredBlock189PC := 310.
        ].
        recoveredBlock189Step = 310 ifTrue: [
            recoveredBlock189Result := recoveredBlock189Stack1.
            recoveredBlock189Done := true.
        ].
    ].
    recoveredBlock189Result
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) withSortedKeysIn: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f7690; bytecode file offset 0xef3fec"
!SGBlockDB methodsFor: 'recovered'!
internalWriteXMLReturnPort: recoveredArg1 class: recoveredArg2 refClass: recoveredArg3 methodId: recoveredArg4 pins: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'set'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'No method with ID '.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := ' in '.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) inconsistencyFound: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:recoveredBlock86Arg1 :recoveredBlock86Arg2 | 
    | recoveredBlock86Local1 recoveredBlock86Stack0 recoveredBlock86Stack1 recoveredBlock86Stack2 recoveredBlock86Stack3 recoveredBlock86Stack4 recoveredBlock86PC recoveredBlock86Step recoveredBlock86Done recoveredBlock86Result |
    recoveredBlock86Stack0 := self.
    recoveredBlock86PC := 92.
    recoveredBlock86Done := false.
    [recoveredBlock86Done not] whileTrue: [
        recoveredBlock86Step := recoveredBlock86PC.
        recoveredBlock86Step = 92 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Arg1.
            recoveredBlock86PC := 93.
        ].
        recoveredBlock86Step = 93 ifTrue: [
            recoveredBlock86Stack2 := String.
            recoveredBlock86PC := 95.
        ].
        recoveredBlock86Step = 95 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) isKindOf: (recoveredBlock86Stack2).
            recoveredBlock86PC := 96.
        ].
        recoveredBlock86Step = 96 ifTrue: [
            (recoveredBlock86Stack1) ifTrue: [recoveredBlock86PC := 100] ifFalse: [recoveredBlock86PC := 128].
        ].
        recoveredBlock86Step = 100 ifTrue: [
            recoveredBlock86Stack1 := nil.
            recoveredBlock86PC := 101.
        ].
        recoveredBlock86Step = 101 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Arg1.
            recoveredBlock86PC := 102.
        ].
        recoveredBlock86Step = 102 ifTrue: [
            recoveredBlock86Stack3 := 'return'.
            recoveredBlock86PC := 104.
        ].
        recoveredBlock86Step = 104 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) = (recoveredBlock86Stack3).
            recoveredBlock86PC := 105.
        ].
        recoveredBlock86Step = 105 ifTrue: [
            (recoveredBlock86Stack2) ifTrue: [recoveredBlock86PC := 118] ifFalse: [recoveredBlock86PC := 108].
        ].
        recoveredBlock86Step = 108 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Arg1.
            recoveredBlock86PC := 109.
        ].
        recoveredBlock86Step = 109 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) size.
            recoveredBlock86PC := 111.
        ].
        recoveredBlock86Step = 111 ifTrue: [
            recoveredBlock86Stack3 := 0.
            recoveredBlock86PC := 113.
        ].
        recoveredBlock86Step = 113 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) = (recoveredBlock86Stack3).
            recoveredBlock86PC := 114.
        ].
        recoveredBlock86Step = 114 ifTrue: [
            (recoveredBlock86Stack2) ifTrue: [recoveredBlock86PC := 118] ifFalse: [recoveredBlock86PC := 124].
        ].
        recoveredBlock86Step = 118 ifTrue: [
            recoveredBlock86PC := 119.
        ].
        recoveredBlock86Step = 119 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Arg2.
            recoveredBlock86PC := 120.
        ].
        recoveredBlock86Step = 120 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 121.
        ].
        recoveredBlock86Step = 121 ifTrue: [
            recoveredLocal4 := recoveredBlock86Stack2.
            recoveredBlock86PC := 124.
        ].
        recoveredBlock86Step = 124 ifTrue: [
            recoveredBlock86PC := 176.
        ].
        recoveredBlock86Step = 128 ifTrue: [
            recoveredBlock86Stack1 := nil.
            recoveredBlock86PC := 129.
        ].
        recoveredBlock86Step = 129 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Arg1.
            recoveredBlock86PC := 130.
        ].
        recoveredBlock86Step = 130 ifTrue: [
            recoveredBlock86Stack3 := recoveredArg4.
            recoveredBlock86PC := 133.
        ].
        recoveredBlock86Step = 133 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) = (recoveredBlock86Stack3).
            recoveredBlock86PC := 134.
        ].
        recoveredBlock86Step = 134 ifTrue: [
            (recoveredBlock86Stack2) ifTrue: [recoveredBlock86PC := 164] ifFalse: [recoveredBlock86PC := 138].
        ].
        recoveredBlock86Step = 138 ifTrue: [
            recoveredBlock86Stack2 := recoveredArg3.
            recoveredBlock86PC := 141.
        ].
        recoveredBlock86Step = 141 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Arg1.
            recoveredBlock86PC := 142.
        ].
        recoveredBlock86Step = 142 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) elementAliasName: (recoveredBlock86Stack3).
            recoveredBlock86PC := 144.
        ].
        recoveredBlock86Step = 144 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Stack2.
            recoveredBlock86PC := 145.
        ].
        recoveredBlock86Step = 145 ifTrue: [
            recoveredBlock86Local1 := recoveredBlock86Stack3.
            recoveredBlock86PC := 146.
        ].
        recoveredBlock86Step = 146 ifTrue: [
            (recoveredBlock86Stack2 == nil) ifTrue: [recoveredBlock86PC := 174] ifFalse: [recoveredBlock86PC := 150].
        ].
        recoveredBlock86Step = 150 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Local1.
            recoveredBlock86PC := 151.
        ].
        recoveredBlock86Step = 151 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) class.
            recoveredBlock86PC := 153.
        ].
        recoveredBlock86Step = 153 ifTrue: [
            recoveredBlock86Stack3 := SGVariable.
            recoveredBlock86PC := 155.
        ].
        recoveredBlock86Step = 155 ifTrue: [
            (recoveredBlock86Stack2 == recoveredBlock86Stack3) ifTrue: [recoveredBlock86PC := 164] ifFalse: [recoveredBlock86PC := 158].
        ].
        recoveredBlock86Step = 158 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Local1.
            recoveredBlock86PC := 159.
        ].
        recoveredBlock86Step = 159 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) isReturn.
            recoveredBlock86PC := 161.
        ].
        recoveredBlock86Step = 161 ifTrue: [
            (recoveredBlock86Stack2) ifTrue: [recoveredBlock86PC := 164] ifFalse: [recoveredBlock86PC := 174].
        ].
        recoveredBlock86Step = 164 ifTrue: [
            recoveredBlock86PC := 165.
        ].
        recoveredBlock86Step = 165 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Arg2.
            recoveredBlock86PC := 166.
        ].
        recoveredBlock86Step = 166 ifTrue: [
            recoveredLocal4 := recoveredBlock86Stack1.
            recoveredBlock86PC := 169.
        ].
        recoveredBlock86Step = 169 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Arg1.
            recoveredBlock86PC := 170.
        ].
        recoveredBlock86Step = 170 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 171.
        ].
        recoveredBlock86Step = 171 ifTrue: [
            recoveredLocal3 := recoveredBlock86Stack2.
            recoveredBlock86PC := 174.
        ].
        recoveredBlock86Step = 174 ifTrue: [
            recoveredBlock86Stack2 := nil.
            recoveredBlock86PC := 175.
        ].
        recoveredBlock86Step = 175 ifTrue: [
            recoveredBlock86Local1 := recoveredBlock86Stack2.
            recoveredBlock86PC := 176.
        ].
        recoveredBlock86Step = 176 ifTrue: [
            recoveredBlock86Result := recoveredBlock86Stack1.
            recoveredBlock86Done := true.
        ].
    ].
    recoveredBlock86Result
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := 'No return pin in method'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) inconsistencyFound: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 'ReturnPort'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := 'location'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) internalWriteXMLPin: (recoveredStack1) posAttr: (recoveredStack2) pin: (recoveredStack3) supportsTempVar: (recoveredStack4).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := 'methodName'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nmToken: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := 'defaultPort'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 306.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodAliasName: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodName.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := 'methodName'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nmToken: (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := 'methodOID'.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) localId: (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := 'returnElementOID'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) localId: (recoveredStack2).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := 'defaultPort'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := [:recoveredBlock311Arg1 :recoveredBlock311Arg2 | 
    | recoveredBlock311Local1 recoveredBlock311Stack0 recoveredBlock311Stack1 recoveredBlock311Stack2 recoveredBlock311Stack3 recoveredBlock311Stack4 recoveredBlock311Stack5 recoveredBlock311Stack6 recoveredBlock311PC recoveredBlock311Step recoveredBlock311Done recoveredBlock311Result |
    recoveredBlock311Stack0 := self.
    recoveredBlock311PC := 318.
    recoveredBlock311Done := false.
    [recoveredBlock311Done not] whileTrue: [
        recoveredBlock311Step := recoveredBlock311PC.
        recoveredBlock311Step = 318 ifTrue: [
            recoveredBlock311Stack1 := nil.
            recoveredBlock311PC := 319.
        ].
        recoveredBlock311Step = 319 ifTrue: [
            recoveredBlock311Stack2 := recoveredBlock311Arg2.
            recoveredBlock311PC := 320.
        ].
        recoveredBlock311Step = 320 ifTrue: [
            recoveredBlock311Stack3 := recoveredLocal4.
            recoveredBlock311PC := 323.
        ].
        recoveredBlock311Step = 323 ifTrue: [
            (recoveredBlock311Stack2 == recoveredBlock311Stack3) ifTrue: [recoveredBlock311PC := 412] ifFalse: [recoveredBlock311PC := 326].
        ].
        recoveredBlock311Step = 326 ifTrue: [
            recoveredBlock311PC := 327.
        ].
        recoveredBlock311Step = 327 ifTrue: [
            recoveredBlock311Stack1 := recoveredArg1.
            recoveredBlock311PC := 330.
        ].
        recoveredBlock311Step = 330 ifTrue: [
            recoveredBlock311Stack2 := 'SelectorPort'.
            recoveredBlock311PC := 332.
        ].
        recoveredBlock311Step = 332 ifTrue: [
            (recoveredBlock311Stack1) openComplex: (recoveredBlock311Stack2).
            recoveredBlock311PC := 334.
        ].
        recoveredBlock311Step = 334 ifTrue: [
            recoveredBlock311Stack1 := self.
            recoveredBlock311PC := 335.
        ].
        recoveredBlock311Step = 335 ifTrue: [
            recoveredBlock311Stack2 := recoveredArg1.
            recoveredBlock311PC := 338.
        ].
        recoveredBlock311Step = 338 ifTrue: [
            recoveredBlock311Stack3 := 'direction'.
            recoveredBlock311PC := 340.
        ].
        recoveredBlock311Step = 340 ifTrue: [
            recoveredBlock311Stack4 := recoveredBlock311Arg2.
            recoveredBlock311PC := 341.
        ].
        recoveredBlock311Step = 341 ifTrue: [
            recoveredBlock311Stack5 := false.
            recoveredBlock311PC := 342.
        ].
        recoveredBlock311Step = 342 ifTrue: [
            (recoveredBlock311Stack1) internalWriteXMLPin: (recoveredBlock311Stack2) posAttr: (recoveredBlock311Stack3) pin: (recoveredBlock311Stack4) supportsTempVar: (recoveredBlock311Stack5).
            recoveredBlock311PC := 345.
        ].
        recoveredBlock311Step = 345 ifTrue: [
            recoveredBlock311Stack1 := recoveredBlock311Arg1.
            recoveredBlock311PC := 346.
        ].
        recoveredBlock311Step = 346 ifTrue: [
            recoveredBlock311Stack2 := String.
            recoveredBlock311PC := 348.
        ].
        recoveredBlock311Step = 348 ifTrue: [
            recoveredBlock311Stack1 := (recoveredBlock311Stack1) isKindOf: (recoveredBlock311Stack2).
            recoveredBlock311PC := 349.
        ].
        recoveredBlock311Step = 349 ifTrue: [
            (recoveredBlock311Stack1) ifTrue: [recoveredBlock311PC := 352] ifFalse: [recoveredBlock311PC := 364].
        ].
        recoveredBlock311Step = 352 ifTrue: [
            recoveredBlock311Stack1 := recoveredArg1.
            recoveredBlock311PC := 355.
        ].
        recoveredBlock311Step = 355 ifTrue: [
            recoveredBlock311Stack2 := 'name'.
            recoveredBlock311PC := 357.
        ].
        recoveredBlock311Step = 357 ifTrue: [
            recoveredBlock311Stack3 := recoveredBlock311Arg1.
            recoveredBlock311PC := 358.
        ].
        recoveredBlock311Step = 358 ifTrue: [
            (recoveredBlock311Stack1) attr: (recoveredBlock311Stack2) string: (recoveredBlock311Stack3).
            recoveredBlock311PC := 360.
        ].
        recoveredBlock311Step = 360 ifTrue: [
            recoveredBlock311PC := 407.
        ].
        recoveredBlock311Step = 364 ifTrue: [
            recoveredBlock311Stack1 := recoveredArg3.
            recoveredBlock311PC := 367.
        ].
        recoveredBlock311Step = 367 ifTrue: [
            recoveredBlock311Stack2 := recoveredBlock311Arg1.
            recoveredBlock311PC := 368.
        ].
        recoveredBlock311Step = 368 ifTrue: [
            recoveredBlock311Stack1 := (recoveredBlock311Stack1) elementAliasName: (recoveredBlock311Stack2).
            recoveredBlock311PC := 370.
        ].
        recoveredBlock311Step = 370 ifTrue: [
            (recoveredBlock311Stack1 == nil) ifTrue: [recoveredBlock311PC := 386] ifFalse: [recoveredBlock311PC := 374].
        ].
        recoveredBlock311Step = 374 ifTrue: [
            recoveredBlock311Stack1 := recoveredArg3.
            recoveredBlock311PC := 377.
        ].
        recoveredBlock311Step = 377 ifTrue: [
            recoveredBlock311Stack2 := recoveredBlock311Arg1.
            recoveredBlock311PC := 378.
        ].
        recoveredBlock311Step = 378 ifTrue: [
            recoveredBlock311Stack1 := (recoveredBlock311Stack1) elementAliasName: (recoveredBlock311Stack2).
            recoveredBlock311PC := 380.
        ].
        recoveredBlock311Step = 380 ifTrue: [
            recoveredBlock311Stack1 := (recoveredBlock311Stack1) elementName.
            recoveredBlock311PC := 382.
        ].
        recoveredBlock311Step = 382 ifTrue: [
            recoveredBlock311PC := 388.
        ].
        recoveredBlock311Step = 386 ifTrue: [
            recoveredBlock311Stack1 := '--Absent--'.
            recoveredBlock311PC := 388.
        ].
        recoveredBlock311Step = 388 ifTrue: [
            recoveredBlock311Local1 := recoveredBlock311Stack1.
            recoveredBlock311PC := 389.
        ].
        recoveredBlock311Step = 389 ifTrue: [
            recoveredBlock311Stack1 := recoveredArg1.
            recoveredBlock311PC := 392.
        ].
        recoveredBlock311Step = 392 ifTrue: [
            recoveredBlock311Stack2 := 'elementOID'.
            recoveredBlock311PC := 394.
        ].
        recoveredBlock311Step = 394 ifTrue: [
            recoveredBlock311Stack3 := recoveredBlock311Arg1.
            recoveredBlock311PC := 395.
        ].
        recoveredBlock311Step = 395 ifTrue: [
            (recoveredBlock311Stack1) attr: (recoveredBlock311Stack2) localId: (recoveredBlock311Stack3).
            recoveredBlock311PC := 397.
        ].
        recoveredBlock311Step = 397 ifTrue: [
            recoveredBlock311Stack1 := recoveredArg1.
            recoveredBlock311PC := 400.
        ].
        recoveredBlock311Step = 400 ifTrue: [
            recoveredBlock311Stack2 := 'elementName'.
            recoveredBlock311PC := 402.
        ].
        recoveredBlock311Step = 402 ifTrue: [
            recoveredBlock311Stack3 := recoveredBlock311Local1.
            recoveredBlock311PC := 403.
        ].
        recoveredBlock311Step = 403 ifTrue: [
            (recoveredBlock311Stack1) attr: (recoveredBlock311Stack2) string: (recoveredBlock311Stack3).
            recoveredBlock311PC := 405.
        ].
        recoveredBlock311Step = 405 ifTrue: [
            recoveredBlock311Stack1 := nil.
            recoveredBlock311PC := 406.
        ].
        recoveredBlock311Step = 406 ifTrue: [
            recoveredBlock311Local1 := recoveredBlock311Stack1.
            recoveredBlock311PC := 407.
        ].
        recoveredBlock311Step = 407 ifTrue: [
            recoveredBlock311Stack1 := recoveredArg1.
            recoveredBlock311PC := 410.
        ].
        recoveredBlock311Step = 410 ifTrue: [
            recoveredBlock311Stack1 := (recoveredBlock311Stack1) closeComplex.
            recoveredBlock311PC := 412.
        ].
        recoveredBlock311Step = 412 ifTrue: [
            recoveredBlock311Result := recoveredBlock311Stack1.
            recoveredBlock311Done := true.
        ].
    ].
    recoveredBlock311Result
].
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack0) withSortedKeysIn: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

