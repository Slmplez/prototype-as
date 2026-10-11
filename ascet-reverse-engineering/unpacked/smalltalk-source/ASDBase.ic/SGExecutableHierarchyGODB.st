"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x204e2b18; bytecode file offset 0xddf484"
!SGExecutableHierarchyGODB methodsFor: 'recovered'!
internalWriteXMLSelectorPort: recoveredArg1 class: recoveredArg2 refClass: recoveredArg3 methodId: recoveredArg4 pins: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'Call_88661'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'MethodPort'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'methodName'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'defaultMethod'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequences.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) sequenceCall: (recoveredStack2) sgClass: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) executeMethod.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock109Value0 |
    recoveredBlock109Value0 := recoveredArg1.
    (recoveredBlock109Value0) closeComplex.
    (self) etasDevHalt.
    ^self
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := 'TriggerPort'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'direction'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := false.
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
            (recoveredStack0) closeComplex.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ce070; bytecode file offset 0xecab2c"
!SGExecutableHierarchyGODB methodsFor: 'recovered'!
writeXML: recoveredArg1 class: recoveredArg2 block: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'StatementBlock'.
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
    | block281191f4Value0 |
    block281191f4Value0 := (RBAreaStyle) createWithColor: ((CgRGBColor) red: (65535) green: (65535) blue: (65535)).
    block281191f4Value0
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
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := selectorPorts.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack5 := 'set'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) ports: (recoveredStack2) class: (recoveredStack3) refClass: (recoveredStack4) mode: (recoveredStack5).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 'LabelPosition'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) namePosition.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) point: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 'XMLExport'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconDBImage.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 315] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := 'Die'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := 'TFS_328837'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) asValidFileName.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := 'bmp'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) uniqueLocalName: (recoveredStack1) ext: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := CgWinBMPFileFormat.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) iconDBImage.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := Util.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := (recoveredStack3) path.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := (recoveredStack3) pathName.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkFileName: (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) unload: (recoveredStack1) intoFile: (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := 'Icon'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := 'IconFile'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := 'type'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := 'GRAPHIC'.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nmToken: (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) pcData: (recoveredStack1).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := 'Size'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := icon.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0) complex: (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := 'Contents'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack0) internalWriteXMLStructure: (recoveredStack1) class: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

