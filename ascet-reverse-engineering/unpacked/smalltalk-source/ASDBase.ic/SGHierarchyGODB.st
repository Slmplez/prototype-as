"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014ed4; bytecode file offset 0x912098"
!SGHierarchyGODB methodsFor: 'recovered'!
gOClass
    | recoveredValue0 |
    recoveredValue0 := SGHierarchyGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b668; bytecode file offset 0x96873c"
!SGHierarchyGODB methodsFor: 'recovered'!
pins
    | recoveredValue0 |
    recoveredValue0 := pins.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c79c; bytecode file offset 0x9692b0"
!SGHierarchyGODB methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2338; bytecode file offset 0x9bf474"
!SGHierarchyGODB methodsFor: 'recovered'!
pins: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pins := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c339c; bytecode file offset 0x9bfde0"
!SGHierarchyGODB methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x202c9094; bytecode file offset 0xbc5960"
!SGHierarchyGODB methodsFor: 'recovered'!
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
            recoveredStack0 := (recoveredStack0) pins.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 |
    recoveredBlock22Value0 := recoveredLocal1.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value1) at: (1).
    recoveredBlock22Value3 := (recoveredBlock22Value0) max: (recoveredBlock22Value2).
    recoveredBlock22Value4 := recoveredBlock22Value3.
    recoveredLocal1 := recoveredBlock22Value4.
    recoveredBlock22Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204648bc; bytecode file offset 0xd611ec"
!SGHierarchyGODB methodsFor: 'recovered'!
graphicObject: recoveredArg1 datamodelManager: recoveredArg2 tableBuilder: recoveredArg3 manager: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := DefaultLineStyle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) gOClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconDBImage.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) icon: (recoveredStack2) lineStyle: (recoveredStack3) size: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) iD.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) identifier: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) namePosition.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) hierarchyMGO: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNameVisibility.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) actualNameVisibility: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributedViewNames.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) attributedViewNames: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) pins.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) createForPinDictionary: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) addIdentifierFor: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 'Call_63666'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) customerDataInfo.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) setCustomerDataInfoFrom: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawingOrder.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) drawingOrder: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) areaStyle.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) areaStyle.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) areaStyle: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c05b4; bytecode file offset 0xebcf60"
!SGHierarchyGODB methodsFor: 'recovered'!
writeXML: recoveredArg1 class: recoveredArg2 block: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Hierarchy'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'graphicOID'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := own.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) graphicOID: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := name.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'nameVisibility'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualNameVisibility.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'drawingOrder'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) drawingOrder.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nnInt: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) internalWriteXMLView: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'LineStyle'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) writeXML: (recoveredStack1) tag: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 'FillColor'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) areaStyle.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := [
    | block28117b74Value0 |
    block28117b74Value0 := (RBAreaStyle) createWithColor: ((CgRGBColor) red: (65535) green: (65535) blue: (65535)).
    block28117b74Value0
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) ifNil: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) color.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) color: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'Size'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 'Position'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) point: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 'Interfaces'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := pins.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := [:recoveredBlock136Arg1 :recoveredBlock136Arg2 | 
    | recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 recoveredBlock136Value3 |
    recoveredBlock136Value0 := recoveredArg1.
    recoveredBlock136Value1 := recoveredBlock136Arg1.
    recoveredBlock136Value2 := recoveredBlock136Arg2.
    recoveredBlock136Value3 := (self) internalWriteXML: (recoveredBlock136Value0) name: (recoveredBlock136Value1) pin: (recoveredBlock136Value2).
    recoveredBlock136Value3
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 'LabelPosition'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) namePosition.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) point: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := 'XMLExport'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconDBImage.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 293] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := 'Die'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := 'TFS_328837'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) asValidFileName.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := 'bmp'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) uniqueLocalName: (recoveredStack1) ext: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := CgWinBMPFileFormat.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) iconDBImage.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := Util.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := (recoveredStack3) path.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := (recoveredStack3) pathName.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkFileName: (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) unload: (recoveredStack1) intoFile: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := 'Icon'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := 'IconFile'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := 'type'.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := 'GRAPHIC'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nmToken: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) pcData: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := 'Size'.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := icon.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := 'Contents'.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) internalWriteXMLStructure: (recoveredStack1) class: (recoveredStack2).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

