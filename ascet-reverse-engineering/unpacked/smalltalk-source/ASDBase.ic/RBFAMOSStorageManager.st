"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201400b8; bytecode file offset 0xa3c980"
!RBFAMOSStorageManager methodsFor: 'recovered'!
errorSaveMeasureDataFailed
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultErrorClass.
    (recoveredValue1) saveMeasureDataFailed.
    recoveredValue2 := famLib.
    (recoveredValue2) closeFile.
    recoveredValue3 := famLib.
    recoveredValue4 := (recoveredValue3) class.
    (recoveredValue4) closeDll.
    ^false
! !

"ASDBase.ic method 0x202451e8; bytecode file offset 0xb41ab8"
!RBFAMOSStorageManager methodsFor: 'recovered'!
saveOnlineDLLData: recoveredArg1 in: recoveredArg2 header: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            acquisitionList := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeOnlineDLLToFAMOS: (recoveredStack1) mdfHeader: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) lastFileName: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) freeOnlineDLLBuffers.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) text: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) mdfHeader: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044b29c; bytecode file offset 0xd47bb0"
!RBFAMOSStorageManager methodsFor: 'recovered'!
writeHeaderToFAMOS: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 |
    recoveredValue0 := Character.
    recoveredValue1 := (recoveredValue0) value: (13).
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := Character.
    recoveredValue4 := (recoveredValue3) value: (10).
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue2) , (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredLocal2 := ''.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) , ('Date: ').
    recoveredValue9 := Date.
    recoveredValue10 := (recoveredValue9) today.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := (recoveredValue8) , (recoveredValue11).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue12) , (recoveredValue13).
    recoveredLocal2 := recoveredValue14.
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (recoveredValue15) , ('Time: ').
    recoveredValue17 := Time.
    recoveredValue18 := (recoveredValue17) now.
    recoveredValue19 := (recoveredValue18) printString.
    recoveredValue20 := (recoveredValue16) , (recoveredValue19).
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue20) , (recoveredValue21).
    recoveredLocal2 := recoveredValue22.
    recoveredValue23 := recoveredLocal2.
    recoveredValue24 := (recoveredValue23) , ('Division: ').
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := (recoveredValue25) division.
    recoveredValue27 := (recoveredValue24) , (recoveredValue26).
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := (recoveredValue27) , (recoveredValue28).
    recoveredLocal2 := recoveredValue29.
    recoveredValue30 := recoveredLocal2.
    recoveredValue31 := (recoveredValue30) , ('Project: ').
    recoveredValue32 := recoveredArg1.
    recoveredValue33 := (recoveredValue32) project.
    recoveredValue34 := (recoveredValue31) , (recoveredValue33).
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := (recoveredValue34) , (recoveredValue35).
    recoveredLocal2 := recoveredValue36.
    recoveredValue37 := recoveredLocal2.
    recoveredValue38 := (recoveredValue37) , ('Subject: ').
    recoveredValue39 := recoveredArg1.
    recoveredValue40 := (recoveredValue39) subject.
    recoveredValue41 := (recoveredValue38) , (recoveredValue40).
    recoveredValue42 := recoveredLocal1.
    recoveredValue43 := (recoveredValue41) , (recoveredValue42).
    recoveredLocal2 := recoveredValue43.
    recoveredValue44 := recoveredLocal2.
    recoveredValue45 := (recoveredValue44) , ('Comment: ').
    recoveredValue46 := recoveredArg1.
    recoveredValue47 := (recoveredValue46) text.
    recoveredValue48 := (recoveredValue45) , (recoveredValue47).
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := (recoveredValue48) , (recoveredValue49).
    recoveredLocal2 := recoveredValue50.
    recoveredValue51 := famLib.
    recoveredValue52 := (self) oemConverter.
    recoveredValue53 := recoveredArg1.
    recoveredValue54 := (recoveredValue53) name.
    recoveredValue55 := (recoveredValue52) charToOem: (recoveredValue54).
    recoveredValue56 := (self) oemConverter.
    recoveredValue57 := recoveredLocal2.
    recoveredValue58 := (recoveredValue56) charToOem: (recoveredValue57).
    (recoveredValue51) writeFileInfo: (recoveredValue55) comment: (recoveredValue58).
    ^self
! !

"ASDBase.ic method 0x205afd50; bytecode file offset 0xeac6c0"
!RBFAMOSStorageManager methodsFor: 'recovered'!
writeOnlineDLLToFAMOS: recoveredArg1 mdfHeader: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := RBFamosWriterDLL.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDllLoaded.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := RBFamosWriterDLL.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            famLib := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := famLib.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFile: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorSaveMeasureDataFailed.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) writeHeaderToFAMOS: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49Stack5 recoveredBlock49Stack6 recoveredBlock49Stack7 recoveredBlock49Stack8 recoveredBlock49Stack9 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := OrderedCollection.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) new.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredLocal2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack1 := ByteArray.
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            recoveredBlock49Stack2 := 8.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) new: (recoveredBlock49Stack2).
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredLocal3 := recoveredBlock49Stack1.
            recoveredBlock49PC := 72.
        ].
        recoveredBlock49Step = 72 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 73.
        ].
        recoveredBlock49Step = 73 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) someElement.
            recoveredBlock49PC := 75.
        ].
        recoveredBlock49Step = 75 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Stack1.
            recoveredBlock49PC := 76.
        ].
        recoveredBlock49Step = 76 ifTrue: [
            recoveredBlock49Stack1 := famLib.
            recoveredBlock49PC := 78.
        ].
        recoveredBlock49Step = 78 ifTrue: [
            (recoveredBlock49Stack1) createGroup.
            recoveredBlock49PC := 80.
        ].
        recoveredBlock49Step = 80 ifTrue: [
            recoveredBlock49Stack1 := famLib.
            recoveredBlock49PC := 82.
        ].
        recoveredBlock49Step = 82 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal3.
            recoveredBlock49PC := 85.
        ].
        recoveredBlock49Step = 85 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Local1.
            recoveredBlock49PC := 86.
        ].
        recoveredBlock49Step = 86 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) xName.
            recoveredBlock49PC := 88.
        ].
        recoveredBlock49Step = 88 ifTrue: [
            recoveredBlock49Stack4 := recoveredBlock49Local1.
            recoveredBlock49PC := 89.
        ].
        recoveredBlock49Step = 89 ifTrue: [
            recoveredBlock49Stack4 := (recoveredBlock49Stack4) xUnit.
            recoveredBlock49PC := 91.
        ].
        recoveredBlock49Step = 91 ifTrue: [
            recoveredBlock49Stack5 := ''.
            recoveredBlock49PC := 93.
        ].
        recoveredBlock49Step = 93 ifTrue: [
            recoveredBlock49Stack6 := RBInt32Unsigned.
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            recoveredBlock49Stack6 := (recoveredBlock49Stack6) createDefault.
            recoveredBlock49PC := 97.
        ].
        recoveredBlock49Step = 97 ifTrue: [
            recoveredBlock49Stack6 := (recoveredBlock49Stack6) famosType.
            recoveredBlock49PC := 99.
        ].
        recoveredBlock49Step = 99 ifTrue: [
            recoveredBlock49Stack7 := self.
            recoveredBlock49PC := 100.
        ].
        recoveredBlock49Step = 100 ifTrue: [
            recoveredBlock49Stack7 := (recoveredBlock49Stack7) secondsPerTick.
            recoveredBlock49PC := 102.
        ].
        recoveredBlock49Step = 102 ifTrue: [
            recoveredBlock49Stack8 := #[0 0 0 0 0 0 0 0].
            recoveredBlock49PC := 104.
        ].
        recoveredBlock49Step = 104 ifTrue: [
            (recoveredBlock49Stack1) createChannel: (recoveredBlock49Stack2) name: (recoveredBlock49Stack3) unit: (recoveredBlock49Stack4) comment: (recoveredBlock49Stack5) famType: (recoveredBlock49Stack6) factor: (recoveredBlock49Stack7) offset: (recoveredBlock49Stack8).
            recoveredBlock49PC := 107.
        ].
        recoveredBlock49Step = 107 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal2.
            recoveredBlock49PC := 110.
        ].
        recoveredBlock49Step = 110 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal3.
            recoveredBlock49PC := 113.
        ].
        recoveredBlock49Step = 113 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) asUInt32.
            recoveredBlock49PC := 115.
        ].
        recoveredBlock49Step = 115 ifTrue: [
            (recoveredBlock49Stack1) add: (recoveredBlock49Stack2).
            recoveredBlock49PC := 117.
        ].
        recoveredBlock49Step = 117 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 118.
        ].
        recoveredBlock49Step = 118 ifTrue: [
            recoveredBlock49Stack2 := [:recoveredBlock49Block118Arg1 | 
    | recoveredBlock49Block118Stack0 recoveredBlock49Block118Stack1 recoveredBlock49Block118Stack2 recoveredBlock49Block118Stack3 recoveredBlock49Block118Stack4 recoveredBlock49Block118Stack5 recoveredBlock49Block118Stack6 recoveredBlock49Block118Stack7 recoveredBlock49Block118Stack8 recoveredBlock49Block118Stack9 recoveredBlock49Block118PC recoveredBlock49Block118Step recoveredBlock49Block118Done recoveredBlock49Block118Result |
    recoveredBlock49Block118Stack0 := self.
    recoveredBlock49Block118PC := 124.
    recoveredBlock49Block118Done := false.
    [recoveredBlock49Block118Done not] whileTrue: [
        recoveredBlock49Block118Step := recoveredBlock49Block118PC.
        recoveredBlock49Block118Step = 124 ifTrue: [
            recoveredBlock49Block118Stack1 := recoveredBlock49Block118Arg1.
            recoveredBlock49Block118PC := 125.
        ].
        recoveredBlock49Block118Step = 125 ifTrue: [
            recoveredBlock49Block118Stack1 := (recoveredBlock49Block118Stack1) wFormula.
            recoveredBlock49Block118PC := 127.
        ].
        recoveredBlock49Block118Step = 127 ifTrue: [
            recoveredLocal6 := recoveredBlock49Block118Stack1.
            recoveredBlock49Block118PC := 130.
        ].
        recoveredBlock49Block118Step = 130 ifTrue: [
            recoveredBlock49Block118Stack1 := recoveredLocal6.
            recoveredBlock49Block118PC := 133.
        ].
        recoveredBlock49Block118Step = 133 ifTrue: [
            recoveredBlock49Block118Stack1 := (recoveredBlock49Block118Stack1) isLinearAndInvertible.
            recoveredBlock49Block118PC := 135.
        ].
        recoveredBlock49Block118Step = 135 ifTrue: [
            (recoveredBlock49Block118Stack1) ifTrue: [recoveredBlock49Block118PC := 138] ifFalse: [recoveredBlock49Block118PC := 170].
        ].
        recoveredBlock49Block118Step = 138 ifTrue: [
            recoveredBlock49Block118Stack1 := recoveredLocal6.
            recoveredBlock49Block118PC := 141.
        ].
        recoveredBlock49Block118Step = 141 ifTrue: [
            recoveredBlock49Block118Stack1 := (recoveredBlock49Block118Stack1) offset.
            recoveredBlock49Block118PC := 143.
        ].
        recoveredBlock49Block118Step = 143 ifTrue: [
            recoveredBlock49Block118Stack2 := recoveredLocal6.
            recoveredBlock49Block118PC := 146.
        ].
        recoveredBlock49Block118Step = 146 ifTrue: [
            recoveredBlock49Block118Stack2 := (recoveredBlock49Block118Stack2) scale.
            recoveredBlock49Block118PC := 148.
        ].
        recoveredBlock49Block118Step = 148 ifTrue: [
            recoveredBlock49Block118Stack2 := (recoveredBlock49Block118Stack2) negated.
            recoveredBlock49Block118PC := 150.
        ].
        recoveredBlock49Block118Step = 150 ifTrue: [
            recoveredBlock49Block118Stack1 := (recoveredBlock49Block118Stack1) / (recoveredBlock49Block118Stack2).
            recoveredBlock49Block118PC := 152.
        ].
        recoveredBlock49Block118Step = 152 ifTrue: [
            recoveredLocal5 := recoveredBlock49Block118Stack1.
            recoveredBlock49Block118PC := 155.
        ].
        recoveredBlock49Block118Step = 155 ifTrue: [
            recoveredBlock49Block118Stack1 := 1.
            recoveredBlock49Block118PC := 157.
        ].
        recoveredBlock49Block118Step = 157 ifTrue: [
            recoveredBlock49Block118Stack2 := recoveredLocal6.
            recoveredBlock49Block118PC := 160.
        ].
        recoveredBlock49Block118Step = 160 ifTrue: [
            recoveredBlock49Block118Stack2 := (recoveredBlock49Block118Stack2) scale.
            recoveredBlock49Block118PC := 162.
        ].
        recoveredBlock49Block118Step = 162 ifTrue: [
            recoveredBlock49Block118Stack1 := (recoveredBlock49Block118Stack1) / (recoveredBlock49Block118Stack2).
            recoveredBlock49Block118PC := 164.
        ].
        recoveredBlock49Block118Step = 164 ifTrue: [
            recoveredLocal4 := recoveredBlock49Block118Stack1.
            recoveredBlock49Block118PC := 167.
        ].
        recoveredBlock49Block118Step = 167 ifTrue: [
            recoveredBlock49Block118PC := 180.
        ].
        recoveredBlock49Block118Step = 170 ifTrue: [
            recoveredBlock49Block118Stack1 := 0.
            recoveredBlock49Block118PC := 172.
        ].
        recoveredBlock49Block118Step = 172 ifTrue: [
            recoveredLocal5 := recoveredBlock49Block118Stack1.
            recoveredBlock49Block118PC := 175.
        ].
        recoveredBlock49Block118Step = 175 ifTrue: [
            recoveredBlock49Block118Stack1 := 1.
            recoveredBlock49Block118PC := 177.
        ].
        recoveredBlock49Block118Step = 177 ifTrue: [
            recoveredLocal4 := recoveredBlock49Block118Stack1.
            recoveredBlock49Block118PC := 180.
        ].
        recoveredBlock49Block118Step = 180 ifTrue: [
            recoveredBlock49Block118Stack1 := famLib.
            recoveredBlock49Block118PC := 182.
        ].
        recoveredBlock49Block118Step = 182 ifTrue: [
            recoveredBlock49Block118Stack2 := recoveredLocal3.
            recoveredBlock49Block118PC := 185.
        ].
        recoveredBlock49Block118Step = 185 ifTrue: [
            recoveredBlock49Block118Stack3 := recoveredBlock49Block118Arg1.
            recoveredBlock49Block118PC := 186.
        ].
        recoveredBlock49Block118Step = 186 ifTrue: [
            recoveredBlock49Block118Stack3 := (recoveredBlock49Block118Stack3) wName.
            recoveredBlock49Block118PC := 188.
        ].
        recoveredBlock49Block118Step = 188 ifTrue: [
            recoveredBlock49Block118Stack3 := (recoveredBlock49Block118Stack3) printString.
            recoveredBlock49Block118PC := 190.
        ].
        recoveredBlock49Block118Step = 190 ifTrue: [
            recoveredBlock49Block118Stack4 := recoveredBlock49Block118Arg1.
            recoveredBlock49Block118PC := 191.
        ].
        recoveredBlock49Block118Step = 191 ifTrue: [
            recoveredBlock49Block118Stack4 := (recoveredBlock49Block118Stack4) wUnit.
            recoveredBlock49Block118PC := 193.
        ].
        recoveredBlock49Block118Step = 193 ifTrue: [
            (recoveredBlock49Block118Stack4 == nil) ifTrue: [recoveredBlock49Block118PC := 202] ifFalse: [recoveredBlock49Block118PC := 196].
        ].
        recoveredBlock49Block118Step = 196 ifTrue: [
            recoveredBlock49Block118Stack4 := recoveredBlock49Block118Arg1.
            recoveredBlock49Block118PC := 197.
        ].
        recoveredBlock49Block118Step = 197 ifTrue: [
            recoveredBlock49Block118Stack4 := (recoveredBlock49Block118Stack4) wUnit.
            recoveredBlock49Block118PC := 199.
        ].
        recoveredBlock49Block118Step = 199 ifTrue: [
            recoveredBlock49Block118PC := 204.
        ].
        recoveredBlock49Block118Step = 202 ifTrue: [
            recoveredBlock49Block118Stack4 := ''.
            recoveredBlock49Block118PC := 204.
        ].
        recoveredBlock49Block118Step = 204 ifTrue: [
            recoveredBlock49Block118Stack5 := ''.
            recoveredBlock49Block118PC := 206.
        ].
        recoveredBlock49Block118Step = 206 ifTrue: [
            recoveredBlock49Block118Stack6 := recoveredBlock49Block118Arg1.
            recoveredBlock49Block118PC := 207.
        ].
        recoveredBlock49Block118Step = 207 ifTrue: [
            recoveredBlock49Block118Stack6 := (recoveredBlock49Block118Stack6) isDigital.
            recoveredBlock49Block118PC := 209.
        ].
        recoveredBlock49Block118Step = 209 ifTrue: [
            (recoveredBlock49Block118Stack6) ifTrue: [recoveredBlock49Block118PC := 212] ifFalse: [recoveredBlock49Block118PC := 222].
        ].
        recoveredBlock49Block118Step = 212 ifTrue: [
            recoveredBlock49Block118Stack6 := recoveredBlock49Block118Arg1.
            recoveredBlock49Block118PC := 213.
        ].
        recoveredBlock49Block118Step = 213 ifTrue: [
            recoveredBlock49Block118Stack6 := (recoveredBlock49Block118Stack6) data.
            recoveredBlock49Block118PC := 215.
        ].
        recoveredBlock49Block118Step = 215 ifTrue: [
            recoveredBlock49Block118Stack6 := (recoveredBlock49Block118Stack6) getPhysType.
            recoveredBlock49Block118PC := 217.
        ].
        recoveredBlock49Block118Step = 217 ifTrue: [
            recoveredBlock49Block118Stack6 := (recoveredBlock49Block118Stack6) famosType.
            recoveredBlock49Block118PC := 219.
        ].
        recoveredBlock49Block118Step = 219 ifTrue: [
            recoveredBlock49Block118PC := 229.
        ].
        recoveredBlock49Block118Step = 222 ifTrue: [
            recoveredBlock49Block118Stack6 := recoveredBlock49Block118Arg1.
            recoveredBlock49Block118PC := 223.
        ].
        recoveredBlock49Block118Step = 223 ifTrue: [
            recoveredBlock49Block118Stack6 := (recoveredBlock49Block118Stack6) data.
            recoveredBlock49Block118PC := 225.
        ].
        recoveredBlock49Block118Step = 225 ifTrue: [
            recoveredBlock49Block118Stack6 := (recoveredBlock49Block118Stack6) implType.
            recoveredBlock49Block118PC := 227.
        ].
        recoveredBlock49Block118Step = 227 ifTrue: [
            recoveredBlock49Block118Stack6 := (recoveredBlock49Block118Stack6) famosType.
            recoveredBlock49Block118PC := 229.
        ].
        recoveredBlock49Block118Step = 229 ifTrue: [
            recoveredBlock49Block118Stack7 := recoveredLocal4.
            recoveredBlock49Block118PC := 232.
        ].
        recoveredBlock49Block118Step = 232 ifTrue: [
            recoveredBlock49Block118Stack7 := (recoveredBlock49Block118Stack7) asFloat.
            recoveredBlock49Block118PC := 234.
        ].
        recoveredBlock49Block118Step = 234 ifTrue: [
            recoveredBlock49Block118Stack8 := recoveredLocal5.
            recoveredBlock49Block118PC := 237.
        ].
        recoveredBlock49Block118Step = 237 ifTrue: [
            recoveredBlock49Block118Stack8 := (recoveredBlock49Block118Stack8) asFloat.
            recoveredBlock49Block118PC := 239.
        ].
        recoveredBlock49Block118Step = 239 ifTrue: [
            (recoveredBlock49Block118Stack1) createChannel: (recoveredBlock49Block118Stack2) name: (recoveredBlock49Block118Stack3) unit: (recoveredBlock49Block118Stack4) comment: (recoveredBlock49Block118Stack5) famType: (recoveredBlock49Block118Stack6) factor: (recoveredBlock49Block118Stack7) offset: (recoveredBlock49Block118Stack8).
            recoveredBlock49Block118PC := 242.
        ].
        recoveredBlock49Block118Step = 242 ifTrue: [
            recoveredBlock49Block118Stack1 := recoveredLocal2.
            recoveredBlock49Block118PC := 245.
        ].
        recoveredBlock49Block118Step = 245 ifTrue: [
            recoveredBlock49Block118Stack2 := recoveredLocal3.
            recoveredBlock49Block118PC := 248.
        ].
        recoveredBlock49Block118Step = 248 ifTrue: [
            recoveredBlock49Block118Stack2 := (recoveredBlock49Block118Stack2) asUInt32.
            recoveredBlock49Block118PC := 250.
        ].
        recoveredBlock49Block118Step = 250 ifTrue: [
            recoveredBlock49Block118Stack1 := (recoveredBlock49Block118Stack1) add: (recoveredBlock49Block118Stack2).
            recoveredBlock49Block118PC := 252.
        ].
        recoveredBlock49Block118Step = 252 ifTrue: [
            recoveredBlock49Block118Result := recoveredBlock49Block118Stack1.
            recoveredBlock49Block118Done := true.
        ].
    ].
    recoveredBlock49Block118Result
].
            recoveredBlock49PC := 253.
        ].
        recoveredBlock49Step = 253 ifTrue: [
            (recoveredBlock49Stack1) do: (recoveredBlock49Stack2).
            recoveredBlock49PC := 255.
        ].
        recoveredBlock49Step = 255 ifTrue: [
            recoveredBlock49Stack1 := Array.
            recoveredBlock49PC := 257.
        ].
        recoveredBlock49Step = 257 ifTrue: [
            recoveredBlock49Stack2 := acquisitionList.
            recoveredBlock49PC := 259.
        ].
        recoveredBlock49Step = 259 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Arg1.
            recoveredBlock49PC := 260.
        ].
        recoveredBlock49Step = 260 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) at: (recoveredBlock49Stack3).
            recoveredBlock49PC := 262.
        ].
        recoveredBlock49Step = 262 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) with: (recoveredBlock49Stack2).
            recoveredBlock49PC := 264.
        ].
        recoveredBlock49Step = 264 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal2.
            recoveredBlock49PC := 267.
        ].
        recoveredBlock49Step = 267 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) writeData: (recoveredBlock49Stack1) toChannels: (recoveredBlock49Stack2).
            recoveredBlock49PC := 269.
        ].
        recoveredBlock49Step = 269 ifTrue: [
            (recoveredBlock49Stack0) ifTrue: [recoveredBlock49PC := 280] ifFalse: [recoveredBlock49PC := 272].
        ].
        recoveredBlock49Step = 272 ifTrue: [
            recoveredBlock49Stack0 := famLib.
            recoveredBlock49PC := 274.
        ].
        recoveredBlock49Step = 274 ifTrue: [
            (recoveredBlock49Stack0) closeGroup.
            recoveredBlock49PC := 276.
        ].
        recoveredBlock49Step = 276 ifTrue: [
            recoveredBlock49Stack0 := self.
            recoveredBlock49PC := 277.
        ].
        recoveredBlock49Step = 277 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) errorSaveMeasureDataFailed.
            recoveredBlock49PC := 279.
        ].
        recoveredBlock49Step = 279 ifTrue: [
            ^recoveredBlock49Stack0
        ].
        recoveredBlock49Step = 280 ifTrue: [
            recoveredBlock49Stack0 := famLib.
            recoveredBlock49PC := 282.
        ].
        recoveredBlock49Step = 282 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) closeGroup.
            recoveredBlock49PC := 284.
        ].
        recoveredBlock49Step = 284 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack0.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := famLib.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 298] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := famLib.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack0) closeDll.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206224ac; bytecode file offset 0xf1edc8"
!RBFAMOSStorageManager methodsFor: 'recovered'!
writeData: recoveredArg1 toChannels: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) noPoints.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := OSPtr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := OSHglobal.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) dataBufferHandle.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) immediate: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalLock.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:recoveredBlock75Arg1 :recoveredBlock75Arg2 | 
    | recoveredBlock75Local1 recoveredBlock75Local2 recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75Stack5 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := OSPtr.
            recoveredBlock75PC := 84.
        ].
        recoveredBlock75Step = 84 ifTrue: [
            recoveredBlock75Stack2 := OSHglobal.
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Arg1.
            recoveredBlock75PC := 87.
        ].
        recoveredBlock75Step = 87 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) y.
            recoveredBlock75PC := 89.
        ].
        recoveredBlock75Step = 89 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) dataBufferHandle.
            recoveredBlock75PC := 91.
        ].
        recoveredBlock75Step = 91 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) immediate: (recoveredBlock75Stack3).
            recoveredBlock75PC := 93.
        ].
        recoveredBlock75Step = 93 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) globalLock.
            recoveredBlock75PC := 95.
        ].
        recoveredBlock75Step = 95 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) address: (recoveredBlock75Stack2).
            recoveredBlock75PC := 97.
        ].
        recoveredBlock75Step = 97 ifTrue: [
            recoveredBlock75Local2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 98.
        ].
        recoveredBlock75Step = 98 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Local2.
            recoveredBlock75PC := 99.
        ].
        recoveredBlock75Step = 99 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) isNull.
            recoveredBlock75PC := 101.
        ].
        recoveredBlock75Step = 101 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 104] ifFalse: [recoveredBlock75PC := 157].
        ].
        recoveredBlock75Step = 104 ifTrue: [
            recoveredBlock75Stack1 := OSHglobal.
            recoveredBlock75PC := 106.
        ].
        recoveredBlock75Step = 106 ifTrue: [
            recoveredBlock75Stack2 := recoveredLocal10.
            recoveredBlock75PC := 109.
        ].
        recoveredBlock75Step = 109 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) dataBufferHandle.
            recoveredBlock75PC := 111.
        ].
        recoveredBlock75Step = 111 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) immediate: (recoveredBlock75Stack2).
            recoveredBlock75PC := 113.
        ].
        recoveredBlock75Step = 113 ifTrue: [
            (recoveredBlock75Stack1) globalUnlock.
            recoveredBlock75PC := 115.
        ].
        recoveredBlock75Step = 115 ifTrue: [
            recoveredBlock75Stack1 := 0.
            recoveredBlock75PC := 117.
        ].
        recoveredBlock75Step = 117 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack1.
            recoveredBlock75PC := 118.
        ].
        recoveredBlock75Step = 118 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg2.
            recoveredBlock75PC := 119.
        ].
        recoveredBlock75Step = 119 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) + (-1).
            recoveredBlock75PC := 120.
        ].
        recoveredBlock75Step = 120 ifTrue: [
            recoveredBlock75PC := 140.
        ].
        recoveredBlock75Step = 124 ifTrue: [
            recoveredBlock75Stack2 := OSHglobal.
            recoveredBlock75PC := 126.
        ].
        recoveredBlock75Step = 126 ifTrue: [
            recoveredBlock75Stack3 := recoveredArg1.
            recoveredBlock75PC := 129.
        ].
        recoveredBlock75Step = 129 ifTrue: [
            recoveredBlock75Stack4 := recoveredBlock75Local1.
            recoveredBlock75PC := 130.
        ].
        recoveredBlock75Step = 130 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) at: (recoveredBlock75Stack4).
            recoveredBlock75PC := 132.
        ].
        recoveredBlock75Step = 132 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) y.
            recoveredBlock75PC := 134.
        ].
        recoveredBlock75Step = 134 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) dataBufferHandle.
            recoveredBlock75PC := 136.
        ].
        recoveredBlock75Step = 136 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) immediate: (recoveredBlock75Stack3).
            recoveredBlock75PC := 138.
        ].
        recoveredBlock75Step = 138 ifTrue: [
            (recoveredBlock75Stack2) globalUnlock.
            recoveredBlock75PC := 140.
        ].
        recoveredBlock75Step = 140 ifTrue: [
            (recoveredBlock75Stack1 isInteger and: [recoveredBlock75Local1 isInteger]) ifTrue: [(recoveredBlock75Local1 + 1 <= recoveredBlock75Stack1) ifTrue: [recoveredBlock75Local1 := recoveredBlock75Local1 + 1. recoveredBlock75PC := 124] ifFalse: [recoveredBlock75Local1 := nil. recoveredBlock75PC := 154]] ifFalse: [recoveredBlock75PC := 144].
        ].
        recoveredBlock75Step = 144 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 145.
        ].
        recoveredBlock75Step = 145 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Local1.
            recoveredBlock75PC := 146.
        ].
        recoveredBlock75Step = 146 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) + (1).
            recoveredBlock75PC := 147.
        ].
        recoveredBlock75Step = 147 ifTrue: [
            recoveredBlock75Stack4 := recoveredBlock75Stack3.
            recoveredBlock75PC := 148.
        ].
        recoveredBlock75Step = 148 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack4.
            recoveredBlock75PC := 149.
        ].
        recoveredBlock75Step = 149 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) < (recoveredBlock75Stack3).
            recoveredBlock75PC := 150.
        ].
        recoveredBlock75Step = 150 ifTrue: [
            (recoveredBlock75Stack2) ifTrue: [recoveredBlock75PC := 152] ifFalse: [recoveredBlock75PC := 124].
        ].
        recoveredBlock75Step = 152 ifTrue: [
            recoveredBlock75Stack2 := nil.
            recoveredBlock75PC := 153.
        ].
        recoveredBlock75Step = 153 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack2.
            recoveredBlock75PC := 154.
        ].
        recoveredBlock75Step = 154 ifTrue: [
            recoveredBlock75PC := 155.
        ].
        recoveredBlock75Step = 155 ifTrue: [
            recoveredBlock75Stack1 := false.
            recoveredBlock75PC := 156.
        ].
        recoveredBlock75Step = 156 ifTrue: [
            ^recoveredBlock75Stack1
        ].
        recoveredBlock75Step = 157 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal8.
            recoveredBlock75PC := 160.
        ].
        recoveredBlock75Step = 160 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 161.
        ].
        recoveredBlock75Step = 161 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Local2.
            recoveredBlock75PC := 162.
        ].
        recoveredBlock75Step = 162 ifTrue: [
            (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 164.
        ].
        recoveredBlock75Step = 164 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 165.
        ].
        recoveredBlock75Step = 165 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) y.
            recoveredBlock75PC := 167.
        ].
        recoveredBlock75Step = 167 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) byteSize.
            recoveredBlock75PC := 169.
        ].
        recoveredBlock75Step = 169 ifTrue: [
            recoveredBlock75Stack2 := 1.
            recoveredBlock75PC := 171.
        ].
        recoveredBlock75Step = 171 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) = (recoveredBlock75Stack2).
            recoveredBlock75PC := 172.
        ].
        recoveredBlock75Step = 172 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 176] ifFalse: [recoveredBlock75PC := 200].
        ].
        recoveredBlock75Step = 176 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal7.
            recoveredBlock75PC := 179.
        ].
        recoveredBlock75Step = 179 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 180.
        ].
        recoveredBlock75Step = 180 ifTrue: [
            recoveredBlock75Stack3 := [:block2811edc8Arg1 :block2811edc8Arg2 | 
    | block2811edc8Value0 block2811edc8Value1 block2811edc8Value2 block2811edc8Value3 block2811edc8Value4 |
    block2811edc8Value0 := block2811edc8Arg1.
    block2811edc8Value1 := block2811edc8Arg2.
    block2811edc8Value2 := block2811edc8Arg2.
    block2811edc8Value3 := (block2811edc8Value2) + (8).
    block2811edc8Value4 := (block2811edc8Value0) memcpyFrom: (block2811edc8Value1) to: (block2811edc8Value3).
    block2811edc8Value4
].
            recoveredBlock75PC := 182.
        ].
        recoveredBlock75Step = 182 ifTrue: [
            recoveredBlock75PC := 195.
        ].
        recoveredBlock75Step = 195 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 197.
        ].
        recoveredBlock75Step = 197 ifTrue: [
            recoveredBlock75PC := 312.
        ].
        recoveredBlock75Step = 200 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 201.
        ].
        recoveredBlock75Step = 201 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) y.
            recoveredBlock75PC := 203.
        ].
        recoveredBlock75Step = 203 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) byteSize.
            recoveredBlock75PC := 205.
        ].
        recoveredBlock75Step = 205 ifTrue: [
            recoveredBlock75Stack2 := 2.
            recoveredBlock75PC := 207.
        ].
        recoveredBlock75Step = 207 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) = (recoveredBlock75Stack2).
            recoveredBlock75PC := 208.
        ].
        recoveredBlock75Step = 208 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 212] ifFalse: [recoveredBlock75PC := 242].
        ].
        recoveredBlock75Step = 212 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal7.
            recoveredBlock75PC := 215.
        ].
        recoveredBlock75Step = 215 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 216.
        ].
        recoveredBlock75Step = 216 ifTrue: [
            recoveredBlock75Stack3 := [:block2811edecArg1 :block2811edecArg2 | 
    | block2811edecValue0 block2811edecValue1 block2811edecValue2 block2811edecValue3 block2811edecValue4 block2811edecValue5 block2811edecValue6 |
    block2811edecValue0 := block2811edecArg1.
    block2811edecValue1 := block2811edecArg2.
    block2811edecValue2 := (block2811edecValue1) * (2).
    block2811edecValue3 := block2811edecArg2.
    block2811edecValue4 := (block2811edecValue3) * (2).
    block2811edecValue5 := (block2811edecValue4) + (16).
    block2811edecValue6 := (block2811edecValue0) memcpyFrom: (block2811edecValue2) to: (block2811edecValue5).
    block2811edecValue6
].
            recoveredBlock75PC := 218.
        ].
        recoveredBlock75Step = 218 ifTrue: [
            recoveredBlock75PC := 237.
        ].
        recoveredBlock75Step = 237 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 239.
        ].
        recoveredBlock75Step = 239 ifTrue: [
            recoveredBlock75PC := 312.
        ].
        recoveredBlock75Step = 242 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 243.
        ].
        recoveredBlock75Step = 243 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) y.
            recoveredBlock75PC := 245.
        ].
        recoveredBlock75Step = 245 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) byteSize.
            recoveredBlock75PC := 247.
        ].
        recoveredBlock75Step = 247 ifTrue: [
            recoveredBlock75Stack2 := 4.
            recoveredBlock75PC := 249.
        ].
        recoveredBlock75Step = 249 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) = (recoveredBlock75Stack2).
            recoveredBlock75PC := 250.
        ].
        recoveredBlock75Step = 250 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 254] ifFalse: [recoveredBlock75PC := 284].
        ].
        recoveredBlock75Step = 254 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal7.
            recoveredBlock75PC := 257.
        ].
        recoveredBlock75Step = 257 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 258.
        ].
        recoveredBlock75Step = 258 ifTrue: [
            recoveredBlock75Stack3 := [:block2811ee10Arg1 :block2811ee10Arg2 | 
    | block2811ee10Value0 block2811ee10Value1 block2811ee10Value2 block2811ee10Value3 block2811ee10Value4 block2811ee10Value5 block2811ee10Value6 |
    block2811ee10Value0 := block2811ee10Arg1.
    block2811ee10Value1 := block2811ee10Arg2.
    block2811ee10Value2 := (block2811ee10Value1) * (4).
    block2811ee10Value3 := block2811ee10Arg2.
    block2811ee10Value4 := (block2811ee10Value3) * (4).
    block2811ee10Value5 := (block2811ee10Value4) + (32).
    block2811ee10Value6 := (block2811ee10Value0) memcpyFrom: (block2811ee10Value2) to: (block2811ee10Value5).
    block2811ee10Value6
].
            recoveredBlock75PC := 260.
        ].
        recoveredBlock75Step = 260 ifTrue: [
            recoveredBlock75PC := 279.
        ].
        recoveredBlock75Step = 279 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 281.
        ].
        recoveredBlock75Step = 281 ifTrue: [
            recoveredBlock75PC := 312.
        ].
        recoveredBlock75Step = 284 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal7.
            recoveredBlock75PC := 287.
        ].
        recoveredBlock75Step = 287 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg2.
            recoveredBlock75PC := 288.
        ].
        recoveredBlock75Step = 288 ifTrue: [
            recoveredBlock75Stack3 := [:block2811ee34Arg1 :block2811ee34Arg2 | 
    | block2811ee34Value0 block2811ee34Value1 block2811ee34Value2 block2811ee34Value3 block2811ee34Value4 block2811ee34Value5 block2811ee34Value6 |
    block2811ee34Value0 := block2811ee34Arg1.
    block2811ee34Value1 := block2811ee34Arg2.
    block2811ee34Value2 := (block2811ee34Value1) * (8).
    block2811ee34Value3 := block2811ee34Arg2.
    block2811ee34Value4 := (block2811ee34Value3) * (8).
    block2811ee34Value5 := (block2811ee34Value4) + (64).
    block2811ee34Value6 := (block2811ee34Value0) memcpyFrom: (block2811ee34Value2) to: (block2811ee34Value5).
    block2811ee34Value6
].
            recoveredBlock75PC := 290.
        ].
        recoveredBlock75Step = 290 ifTrue: [
            recoveredBlock75PC := 310.
        ].
        recoveredBlock75Step = 310 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 312.
        ].
        recoveredBlock75Step = 312 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredPC := 448.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack6 := 4.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack6 := 32.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := (recoveredStack3) memcpyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredLocal6 := recoveredStack3.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := famLib.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack4 := (recoveredStack4) first.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack3) writeToChannel: (recoveredStack4) data: (recoveredStack5).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredPC := 419.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack5 := recoveredLocal7.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack6 := recoveredLocal8.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (-1).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (-1).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack5 := (recoveredStack5) value: (recoveredStack6) value: (recoveredStack7).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredLocal5 := recoveredStack5.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack5 := famLib.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack7 := recoveredLocal5.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack5) writeToChannel: (recoveredStack6) data: (recoveredStack7).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack3 isInteger and: [recoveredStack4 isInteger]) ifTrue: [(recoveredStack4 + 1 <= recoveredStack3) ifTrue: [recoveredStack4 := recoveredStack4 + 1. recoveredStack5 := recoveredStack4. recoveredPC := 374] ifFalse: [recoveredPC := 447]] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 422 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredLocal1 := recoveredStack6.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 443] ifFalse: [recoveredPC := 438].
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredPC := 377.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 324] ifFalse: [recoveredPC := 478]] ifFalse: [recoveredPC := 451].
        ].
        recoveredStep = 451 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 474] ifFalse: [recoveredPC := 468].
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredPC := 327.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := OSHglobal.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataBufferHandle.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := (recoveredStack1) immediate: (recoveredStack2).
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            (recoveredStack1) globalUnlock.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredPC := 521.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack3 := OSHglobal.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack4 := (recoveredStack4) dataBufferHandle.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack3 := (recoveredStack3) immediate: (recoveredStack4).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            (recoveredStack3) globalUnlock.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 500] ifFalse: [recoveredPC := 549]] ifFalse: [recoveredPC := 524].
        ].
        recoveredStep = 524 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 545] ifFalse: [recoveredPC := 540].
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredPC := 503.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

