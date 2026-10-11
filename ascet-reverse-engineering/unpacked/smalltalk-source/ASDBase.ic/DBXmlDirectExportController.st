"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e8fbc; bytecode file offset 0x9e58a0"
!DBXmlDirectExportController methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ASDXMLExportParameters.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue2) initForDBXmlDirectExport.
    recoveredValue4 := super initOn: (recoveredValue0) options: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20573f34; bytecode file offset 0xe70888"
!DBXmlDirectExportController methodsFor: 'recovered'!
exportComponents: recoveredArg1 to: recoveredArg2 zip: recoveredArg3 ui: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDXMLExportOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUseDirectAMDExport.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Call_329920'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := CfsStat.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxPath.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Too long export path: '.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'Export path:\ \'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := '\ \is too long for Windows file system!!'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := -4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeTempDir: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := ASDXMLExportCollection.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := options.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2) roots: (recoveredStack3) destDir: (recoveredStack4) exportController: (recoveredStack5).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDBInterfaceGlobal.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := options.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) directExport: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 213].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'EHI_84275'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock145Stack0 recoveredBlock145Stack1 recoveredBlock145Stack2 recoveredBlock145Stack3 recoveredBlock145Stack4 recoveredBlock145Stack5 recoveredBlock145PC recoveredBlock145Step recoveredBlock145Done recoveredBlock145Result |
    recoveredBlock145Stack0 := self.
    recoveredBlock145PC := 152.
    recoveredBlock145Done := false.
    [recoveredBlock145Done not] whileTrue: [
        recoveredBlock145Step := recoveredBlock145PC.
        recoveredBlock145Step = 152 ifTrue: [
            recoveredBlock145Stack1 := CfsFileDescriptor.
            recoveredBlock145PC := 154.
        ].
        recoveredBlock145Step = 154 ifTrue: [
            recoveredBlock145Stack2 := recoveredArg2.
            recoveredBlock145PC := 157.
        ].
        recoveredBlock145Step = 157 ifTrue: [
            (recoveredBlock145Stack1) remove: (recoveredBlock145Stack2).
            recoveredBlock145PC := 159.
        ].
        recoveredBlock145Step = 159 ifTrue: [
            recoveredBlock145Stack1 := EtasZipToolController.
            recoveredBlock145PC := 161.
        ].
        recoveredBlock145Step = 161 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) new.
            recoveredBlock145PC := 163.
        ].
        recoveredBlock145Step = 163 ifTrue: [
            recoveredBlock145Stack2 := recoveredLocal2.
            recoveredBlock145PC := 166.
        ].
        recoveredBlock145Step = 166 ifTrue: [
            recoveredBlock145Stack3 := recoveredArg2.
            recoveredBlock145PC := 169.
        ].
        recoveredBlock145Step = 169 ifTrue: [
            recoveredBlock145Stack4 := true.
            recoveredBlock145PC := 170.
        ].
        recoveredBlock145Step = 170 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) zipDirectoryRecursive: (recoveredBlock145Stack2) into: (recoveredBlock145Stack3) delete: (recoveredBlock145Stack4).
            recoveredBlock145PC := 173.
        ].
        recoveredBlock145Step = 173 ifTrue: [
            recoveredLocal3 := recoveredBlock145Stack1.
            recoveredBlock145PC := 176.
        ].
        recoveredBlock145Step = 176 ifTrue: [
            recoveredBlock145Stack1 := recoveredLocal3.
            recoveredBlock145PC := 179.
        ].
        recoveredBlock145Step = 179 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) isError.
            recoveredBlock145PC := 181.
        ].
        recoveredBlock145Step = 181 ifTrue: [
            (recoveredBlock145Stack1) ifTrue: [recoveredBlock145PC := 184] ifFalse: [recoveredBlock145PC := 202].
        ].
        recoveredBlock145Step = 184 ifTrue: [
            recoveredBlock145Stack1 := self.
            recoveredBlock145PC := 185.
        ].
        recoveredBlock145Step = 185 ifTrue: [
            recoveredBlock145Stack2 := recoveredLocal3.
            recoveredBlock145PC := 188.
        ].
        recoveredBlock145Step = 188 ifTrue: [
            recoveredBlock145Stack2 := (recoveredBlock145Stack2) messageText.
            recoveredBlock145PC := 190.
        ].
        recoveredBlock145Step = 190 ifTrue: [
            (recoveredBlock145Stack1) logError: (recoveredBlock145Stack2).
            recoveredBlock145PC := 192.
        ].
        recoveredBlock145Step = 192 ifTrue: [
            recoveredBlock145Stack1 := -5.
            recoveredBlock145PC := 194.
        ].
        recoveredBlock145Step = 194 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Stack1.
            recoveredBlock145PC := 195.
        ].
        recoveredBlock145Step = 195 ifTrue: [
            recoveredLocal3 := recoveredBlock145Stack2.
            recoveredBlock145PC := 198.
        ].
        recoveredBlock145Step = 198 ifTrue: [
            recoveredBlock145PC := 208.
        ].
        recoveredBlock145Step = 202 ifTrue: [
            recoveredBlock145Stack1 := 0.
            recoveredBlock145PC := 204.
        ].
        recoveredBlock145Step = 204 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Stack1.
            recoveredBlock145PC := 205.
        ].
        recoveredBlock145Step = 205 ifTrue: [
            recoveredLocal3 := recoveredBlock145Stack2.
            recoveredBlock145PC := 208.
        ].
        recoveredBlock145Step = 208 ifTrue: [
            recoveredBlock145Result := recoveredBlock145Stack1.
            recoveredBlock145Done := true.
        ].
    ].
    recoveredBlock145Result
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := 'Creating ZIP Archive'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) execLongOperation: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := 'Call_93870'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) deletePathRecursive: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := super exportComponents: (recoveredStack2) to: (recoveredStack3) zip: (recoveredStack4) ui: (recoveredStack5).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

