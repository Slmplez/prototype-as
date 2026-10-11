"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003fbf0; bytecode file offset 0x93c75c"
!AMLIfDataXCP methodsFor: 'recovered'!
testAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AMLIfDataXCP.
    recoveredValue1 := (self) amlTestAccess: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20087d44; bytecode file offset 0x984610"
!AMLIfDataXCP methodsFor: 'recovered'!
xCPIfData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AMLXcpIfData.
    recoveredValue1 := aml.
    recoveredValue2 := (recoveredValue0) createFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200df29c; bytecode file offset 0x9dbc24"
!AMLIfDataXCP methodsFor: 'recovered'!
asModuleIFData
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AMLModuleIfDataXCP.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) copyIn: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200df300; bytecode file offset 0x9dbc24"
!AMLIfDataXCP methodsFor: 'recovered'!
asLabelIFData
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AMLLabelIfDataXCP.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) copyIn: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200df364; bytecode file offset 0x9dbc24"
!AMLIfDataXCP methodsFor: 'recovered'!
asMemorySegmentIFData
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AMLMemorySegmentIfDataXCP.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) copyIn: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202a7fdc; bytecode file offset 0xba48bc"
!AMLIfDataXCP methodsFor: 'recovered'!
testAccessMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AMLIfDataXCP.
    recoveredValue1 := (recoveredValue0) methodNamesCategorizedIn: (#('internal')) all: (false).
    recoveredValue2 := (recoveredValue1) asArray.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) selector.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) perform: (recoveredBlock12Stack3).
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack3 := AMLIfDataXCP.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack4 := recoveredBlock12Arg1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) compiledMethodAt: (recoveredBlock12Stack4).
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) sourceString.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 42] ifFalse: [recoveredBlock12PC := 38].
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) etasDevHalt.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) doWithIndex: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20412e94; bytecode file offset 0xd0f86c"
!AMLIfDataXCP methodsFor: 'recovered'!
generateClassAccessMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) generateClassName.
    recoveredValue3 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) etasDevHalt.
    recoveredBlock8Value0
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := WriteStream.
    recoveredValue6 := (recoveredValue5) on: ('').
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) selectorName.
    recoveredValue11 := aml.
    recoveredValue12 := (recoveredValue11) definition.
    recoveredValue13 := (recoveredValue10) , (recoveredValue12).
    recoveredValue14 := recoveredValue13.
    recoveredLocal1 := recoveredValue14.
    (recoveredValue8) nextPutAll: (recoveredValue13).
    recoveredValue15 := recoveredValue7.
    (recoveredValue15) cr.
    (recoveredValue7) nextPutAll: ('">> ').
    recoveredValue16 := (self) pathName.
    recoveredValue17 := recoveredLocal2.
    (recoveredValue16) printOn: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := recoveredValue18.
    (recoveredValue19) nextPutAll: (' <<"').
    recoveredValue20 := recoveredValue18.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue18.
    (recoveredValue21) nextPutAll: ('^( ').
    recoveredValue22 := recoveredValue18.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) generateClassName.
    (recoveredValue22) nextPutAll: (recoveredValue24).
    recoveredValue25 := recoveredValue18.
    (recoveredValue25) nextPutAll: (' createFor: aml )').
    (recoveredValue18) cr.
    recoveredValue26 := aml.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := recoveredLocal2.
    recoveredValue29 := (recoveredValue28) contents.
    recoveredValue30 := (self) class.
    recoveredValue31 := recoveredLocal3.
    recoveredValue32 := (recoveredValue31) getDefinedApplication.
    (recoveredValue26) generateMethod: (recoveredValue27) source: (recoveredValue29) for: (recoveredValue30) in: (recoveredValue32) categorizeIn: ('complexArgument').
    ^self
! !

"ASDBase.ic method 0x205803f4; bytecode file offset 0xe7cd00"
!AMLIfDataXCP methodsFor: 'recovered'!
versionCheck: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := [:block28112ff0Arg1 | 
    | block28112ff0Value0 block28112ff0Value1 block28112ff0Value2 block28112ff0Value3 |
    block28112ff0Value0 := block28112ff0Arg1.
    block28112ff0Value1 := (block28112ff0Value0) longName.
    block28112ff0Value2 := (block28112ff0Value1) isString.
    block28112ff0Value3 := (block28112ff0Value2) not.
    block28112ff0Value3
].
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) select: (recoveredBlock4Stack2).
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block24Arg1 | 
    | recoveredBlock4Block24Local1 recoveredBlock4Block24Stack0 recoveredBlock4Block24Stack1 recoveredBlock4Block24Stack2 recoveredBlock4Block24Stack3 recoveredBlock4Block24Stack4 recoveredBlock4Block24PC recoveredBlock4Block24Step recoveredBlock4Block24Done recoveredBlock4Block24Result |
    recoveredBlock4Block24Stack0 := self.
    recoveredBlock4Block24PC := 30.
    recoveredBlock4Block24Done := false.
    [recoveredBlock4Block24Done not] whileTrue: [
        recoveredBlock4Block24Step := recoveredBlock4Block24PC.
        recoveredBlock4Block24Step = 30 ifTrue: [
            recoveredBlock4Block24Stack1 := nil.
            recoveredBlock4Block24PC := 31.
        ].
        recoveredBlock4Block24Step = 31 ifTrue: [
            recoveredBlock4Block24Stack2 := recoveredBlock4Block24Arg1.
            recoveredBlock4Block24PC := 32.
        ].
        recoveredBlock4Block24Step = 32 ifTrue: [
            recoveredBlock4Block24Stack2 := (recoveredBlock4Block24Stack2) longName.
            recoveredBlock4Block24PC := 33.
        ].
        recoveredBlock4Block24Step = 33 ifTrue: [
            recoveredBlock4Block24Stack3 := self.
            recoveredBlock4Block24PC := 34.
        ].
        recoveredBlock4Block24Step = 34 ifTrue: [
            recoveredBlock4Block24Stack3 := (recoveredBlock4Block24Stack3) name.
            recoveredBlock4Block24PC := 36.
        ].
        recoveredBlock4Block24Step = 36 ifTrue: [
            recoveredBlock4Block24Stack2 := (recoveredBlock4Block24Stack2) getTaggedStructFor: (recoveredBlock4Block24Stack3).
            recoveredBlock4Block24PC := 38.
        ].
        recoveredBlock4Block24Step = 38 ifTrue: [
            recoveredBlock4Block24Stack3 := recoveredBlock4Block24Stack2.
            recoveredBlock4Block24PC := 39.
        ].
        recoveredBlock4Block24Step = 39 ifTrue: [
            recoveredBlock4Block24Local1 := recoveredBlock4Block24Stack3.
            recoveredBlock4Block24PC := 40.
        ].
        recoveredBlock4Block24Step = 40 ifTrue: [
            (recoveredBlock4Block24Stack2 == nil) ifTrue: [recoveredBlock4Block24PC := 51] ifFalse: [recoveredBlock4Block24PC := 44].
        ].
        recoveredBlock4Block24Step = 44 ifTrue: [
            recoveredBlock4Block24PC := 45.
        ].
        recoveredBlock4Block24Step = 45 ifTrue: [
            recoveredBlock4Block24Stack1 := recoveredBlock4Block24Local1.
            recoveredBlock4Block24PC := 46.
        ].
        recoveredBlock4Block24Step = 46 ifTrue: [
            recoveredBlock4Block24Stack1 := (recoveredBlock4Block24Stack1) copyTree.
            recoveredBlock4Block24PC := 48.
        ].
        recoveredBlock4Block24Step = 48 ifTrue: [
            recoveredBlock4Block24Stack2 := recoveredBlock4Block24Stack1.
            recoveredBlock4Block24PC := 49.
        ].
        recoveredBlock4Block24Step = 49 ifTrue: [
            aml := recoveredBlock4Block24Stack2.
            recoveredBlock4Block24PC := 51.
        ].
        recoveredBlock4Block24Step = 51 ifTrue: [
            recoveredBlock4Block24Result := recoveredBlock4Block24Stack1.
            recoveredBlock4Block24Done := true.
        ].
    ].
    recoveredBlock4Block24Result
].
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            (recoveredBlock4Stack1) do: (recoveredBlock4Stack2).
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack1 := aml.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 62] ifFalse: [recoveredBlock4PC := 60].
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block62Arg1 | 
    | recoveredBlock4Block62Value0 recoveredBlock4Block62Value1 recoveredBlock4Block62Value2 recoveredBlock4Block62Value3 recoveredBlock4Block62Value4 |
    recoveredBlock4Block62Value0 := recoveredBlock4Block62Arg1.
    recoveredBlock4Block62Value1 := (recoveredBlock4Block62Value0) uInt1.
    recoveredBlock4Block62Value2 := (recoveredBlock4Block62Value1) value.
    recoveredBlock4Block62Value3 := [:recoveredBlock4Block62Block73Arg1 | 
    | recoveredBlock4Block62Block73Stack0 recoveredBlock4Block62Block73Stack1 recoveredBlock4Block62Block73Stack2 recoveredBlock4Block62Block73Stack3 recoveredBlock4Block62Block73Stack4 recoveredBlock4Block62Block73PC recoveredBlock4Block62Block73Step recoveredBlock4Block62Block73Done recoveredBlock4Block62Block73Result |
    recoveredBlock4Block62Block73Stack0 := self.
    recoveredBlock4Block62Block73PC := 80.
    recoveredBlock4Block62Block73Done := false.
    [recoveredBlock4Block62Block73Done not] whileTrue: [
        recoveredBlock4Block62Block73Step := recoveredBlock4Block62Block73PC.
        recoveredBlock4Block62Block73Step = 80 ifTrue: [
            recoveredBlock4Block62Block73Stack1 := nil.
            recoveredBlock4Block62Block73PC := 81.
        ].
        recoveredBlock4Block62Block73Step = 81 ifTrue: [
            recoveredBlock4Block62Block73Stack2 := recoveredBlock4Block62Block73Arg1.
            recoveredBlock4Block62Block73PC := 82.
        ].
        recoveredBlock4Block62Block73Step = 82 ifTrue: [
            recoveredBlock4Block62Block73Stack3 := 256.
            recoveredBlock4Block62Block73PC := 86.
        ].
        recoveredBlock4Block62Block73Step = 86 ifTrue: [
            recoveredBlock4Block62Block73Stack2 := (recoveredBlock4Block62Block73Stack2) ~= (recoveredBlock4Block62Block73Stack3).
            recoveredBlock4Block62Block73PC := 87.
        ].
        recoveredBlock4Block62Block73Step = 87 ifTrue: [
            (recoveredBlock4Block62Block73Stack2) ifTrue: [recoveredBlock4Block62Block73PC := 90] ifFalse: [recoveredBlock4Block62Block73PC := 99].
        ].
        recoveredBlock4Block62Block73Step = 90 ifTrue: [
            recoveredBlock4Block62Block73PC := 91.
        ].
        recoveredBlock4Block62Block73Step = 91 ifTrue: [
            recoveredBlock4Block62Block73Stack1 := self.
            recoveredBlock4Block62Block73PC := 92.
        ].
        recoveredBlock4Block62Block73Step = 92 ifTrue: [
            recoveredBlock4Block62Block73Stack2 := self.
            recoveredBlock4Block62Block73PC := 93.
        ].
        recoveredBlock4Block62Block73Step = 93 ifTrue: [
            recoveredBlock4Block62Block73Stack2 := (recoveredBlock4Block62Block73Stack2) name.
            recoveredBlock4Block62Block73PC := 95.
        ].
        recoveredBlock4Block62Block73Step = 95 ifTrue: [
            (recoveredBlock4Block62Block73Stack1) removeAmlNamed: (recoveredBlock4Block62Block73Stack2).
            recoveredBlock4Block62Block73PC := 97.
        ].
        recoveredBlock4Block62Block73Step = 97 ifTrue: [
            recoveredBlock4Block62Block73Stack1 := false.
            recoveredBlock4Block62Block73PC := 98.
        ].
        recoveredBlock4Block62Block73Step = 98 ifTrue: [
            ^recoveredBlock4Block62Block73Stack1
        ].
        recoveredBlock4Block62Block73Step = 99 ifTrue: [
            recoveredBlock4Block62Block73Result := recoveredBlock4Block62Block73Stack1.
            recoveredBlock4Block62Block73Done := true.
        ].
    ].
    recoveredBlock4Block62Block73Result
].
    recoveredBlock4Block62Value4 := (recoveredBlock4Block62Value2) ifNotNil: (recoveredBlock4Block62Value3).
    recoveredBlock4Block62Value4
].
            recoveredBlock4PC := 103.
        ].
        recoveredBlock4Step = 103 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block106Arg1 | 
    | recoveredBlock4Block106Value0 recoveredBlock4Block106Value1 recoveredBlock4Block106Value2 recoveredBlock4Block106Value3 recoveredBlock4Block106Value4 recoveredBlock4Block106Value5 recoveredBlock4Block106Value6 recoveredBlock4Block106Value7 |
    recoveredBlock4Block106Value0 := recoveredBlock4Block106Arg1.
    recoveredBlock4Block106Value1 := (recoveredBlock4Block106Value0) uInt1.
    recoveredBlock4Block106Value2 := (recoveredBlock4Block106Value1) value.
    recoveredBlock4Block106Value3 := [:recoveredBlock4Block106Block117Arg1 | 
    | recoveredBlock4Block106Block117Stack0 recoveredBlock4Block106Block117Stack1 recoveredBlock4Block106Block117Stack2 recoveredBlock4Block106Block117Stack3 recoveredBlock4Block106Block117Stack4 recoveredBlock4Block106Block117PC recoveredBlock4Block106Block117Step recoveredBlock4Block106Block117Done recoveredBlock4Block106Block117Result |
    recoveredBlock4Block106Block117Stack0 := self.
    recoveredBlock4Block106Block117PC := 124.
    recoveredBlock4Block106Block117Done := false.
    [recoveredBlock4Block106Block117Done not] whileTrue: [
        recoveredBlock4Block106Block117Step := recoveredBlock4Block106Block117PC.
        recoveredBlock4Block106Block117Step = 124 ifTrue: [
            recoveredBlock4Block106Block117Stack1 := nil.
            recoveredBlock4Block106Block117PC := 125.
        ].
        recoveredBlock4Block106Block117Step = 125 ifTrue: [
            recoveredBlock4Block106Block117Stack2 := recoveredBlock4Block106Block117Arg1.
            recoveredBlock4Block106Block117PC := 126.
        ].
        recoveredBlock4Block106Block117Step = 126 ifTrue: [
            recoveredBlock4Block106Block117Stack3 := 256.
            recoveredBlock4Block106Block117PC := 130.
        ].
        recoveredBlock4Block106Block117Step = 130 ifTrue: [
            recoveredBlock4Block106Block117Stack2 := (recoveredBlock4Block106Block117Stack2) ~= (recoveredBlock4Block106Block117Stack3).
            recoveredBlock4Block106Block117PC := 131.
        ].
        recoveredBlock4Block106Block117Step = 131 ifTrue: [
            (recoveredBlock4Block106Block117Stack2) ifTrue: [recoveredBlock4Block106Block117PC := 134] ifFalse: [recoveredBlock4Block106Block117PC := 143].
        ].
        recoveredBlock4Block106Block117Step = 134 ifTrue: [
            recoveredBlock4Block106Block117PC := 135.
        ].
        recoveredBlock4Block106Block117Step = 135 ifTrue: [
            recoveredBlock4Block106Block117Stack1 := self.
            recoveredBlock4Block106Block117PC := 136.
        ].
        recoveredBlock4Block106Block117Step = 136 ifTrue: [
            recoveredBlock4Block106Block117Stack2 := self.
            recoveredBlock4Block106Block117PC := 137.
        ].
        recoveredBlock4Block106Block117Step = 137 ifTrue: [
            recoveredBlock4Block106Block117Stack2 := (recoveredBlock4Block106Block117Stack2) name.
            recoveredBlock4Block106Block117PC := 139.
        ].
        recoveredBlock4Block106Block117Step = 139 ifTrue: [
            (recoveredBlock4Block106Block117Stack1) removeAmlNamed: (recoveredBlock4Block106Block117Stack2).
            recoveredBlock4Block106Block117PC := 141.
        ].
        recoveredBlock4Block106Block117Step = 141 ifTrue: [
            recoveredBlock4Block106Block117Stack1 := false.
            recoveredBlock4Block106Block117PC := 142.
        ].
        recoveredBlock4Block106Block117Step = 142 ifTrue: [
            ^recoveredBlock4Block106Block117Stack1
        ].
        recoveredBlock4Block106Block117Step = 143 ifTrue: [
            recoveredBlock4Block106Block117Result := recoveredBlock4Block106Block117Stack1.
            recoveredBlock4Block106Block117Done := true.
        ].
    ].
    recoveredBlock4Block106Block117Result
].
    (recoveredBlock4Block106Value2) ifNotNil: (recoveredBlock4Block106Value3).
    recoveredBlock4Block106Value4 := recoveredBlock4Block106Arg1.
    recoveredBlock4Block106Value5 := (recoveredBlock4Block106Value4) pROTOCOLLAYER.
    recoveredBlock4Block106Value6 := recoveredBlock4Local2.
    recoveredBlock4Block106Value7 := (recoveredBlock4Block106Value5) ifNotNil: (recoveredBlock4Block106Value6).
    recoveredBlock4Block106Value7
].
            recoveredBlock4PC := 155.
        ].
        recoveredBlock4Step = 155 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 158.
        ].
        recoveredBlock4Step = 158 ifTrue: [
            recoveredBlock4Stack1 := aml.
            recoveredBlock4PC := 160.
        ].
        recoveredBlock4Step = 160 ifTrue: [
            recoveredBlock4Stack2 := ifData.
            recoveredBlock4PC := 162.
        ].
        recoveredBlock4Step = 162 ifTrue: [
            (recoveredBlock4Stack1) readFromBytes: (recoveredBlock4Stack2).
            recoveredBlock4PC := 164.
        ].
        recoveredBlock4Step = 164 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) xCPIfData.
            recoveredBlock4PC := 166.
        ].
        recoveredBlock4Step = 166 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) pROTOCOLLAYER.
            recoveredBlock4PC := 168.
        ].
        recoveredBlock4Step = 168 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 174] ifFalse: [recoveredBlock4PC := 172].
        ].
        recoveredBlock4Step = 172 ifTrue: [
            recoveredBlock4Stack0 := false.
            recoveredBlock4PC := 173.
        ].
        recoveredBlock4Step = 173 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 174 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 175.
        ].
        recoveredBlock4Step = 175 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) xCPIfData.
            recoveredBlock4PC := 177.
        ].
        recoveredBlock4Step = 177 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) pROTOCOLLAYER.
            recoveredBlock4PC := 179.
        ].
        recoveredBlock4Step = 179 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 182.
        ].
        recoveredBlock4Step = 182 ifTrue: [
            (recoveredBlock4Stack0) ifNotNil: (recoveredBlock4Stack1).
            recoveredBlock4PC := 184.
        ].
        recoveredBlock4Step = 184 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 185.
        ].
        recoveredBlock4Step = 185 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) xCPIfData.
            recoveredBlock4PC := 187.
        ].
        recoveredBlock4Step = 187 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) taggedStruct7XCPONCAN.
            recoveredBlock4PC := 189.
        ].
        recoveredBlock4Step = 189 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) struct1.
            recoveredBlock4PC := 191.
        ].
        recoveredBlock4Step = 191 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 194.
        ].
        recoveredBlock4Step = 194 ifTrue: [
            (recoveredBlock4Stack0) ifNotNil: (recoveredBlock4Stack1).
            recoveredBlock4PC := 196.
        ].
        recoveredBlock4Step = 196 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 197.
        ].
        recoveredBlock4Step = 197 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) xCPIfData.
            recoveredBlock4PC := 199.
        ].
        recoveredBlock4Step = 199 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) taggedStruct7XCPONSxI.
            recoveredBlock4PC := 201.
        ].
        recoveredBlock4Step = 201 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) struct1.
            recoveredBlock4PC := 203.
        ].
        recoveredBlock4Step = 203 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 206.
        ].
        recoveredBlock4Step = 206 ifTrue: [
            (recoveredBlock4Stack0) ifNotNil: (recoveredBlock4Stack1).
            recoveredBlock4PC := 208.
        ].
        recoveredBlock4Step = 208 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 209.
        ].
        recoveredBlock4Step = 209 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) xCPIfData.
            recoveredBlock4PC := 211.
        ].
        recoveredBlock4Step = 211 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) taggedStruct7XCPONTCPIP.
            recoveredBlock4PC := 213.
        ].
        recoveredBlock4Step = 213 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) struct1.
            recoveredBlock4PC := 215.
        ].
        recoveredBlock4Step = 215 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 218.
        ].
        recoveredBlock4Step = 218 ifTrue: [
            (recoveredBlock4Stack0) ifNotNil: (recoveredBlock4Stack1).
            recoveredBlock4PC := 220.
        ].
        recoveredBlock4Step = 220 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 221.
        ].
        recoveredBlock4Step = 221 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) xCPIfData.
            recoveredBlock4PC := 223.
        ].
        recoveredBlock4Step = 223 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) taggedStruct7XCPONUDPIP.
            recoveredBlock4PC := 225.
        ].
        recoveredBlock4Step = 225 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) struct1.
            recoveredBlock4PC := 227.
        ].
        recoveredBlock4Step = 227 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 230.
        ].
        recoveredBlock4Step = 230 ifTrue: [
            (recoveredBlock4Stack0) ifNotNil: (recoveredBlock4Stack1).
            recoveredBlock4PC := 232.
        ].
        recoveredBlock4Step = 232 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 233.
        ].
        recoveredBlock4Step = 233 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) xCPIfData.
            recoveredBlock4PC := 235.
        ].
        recoveredBlock4Step = 235 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) taggedStruct7XCPONUSB.
            recoveredBlock4PC := 237.
        ].
        recoveredBlock4Step = 237 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) struct1.
            recoveredBlock4PC := 239.
        ].
        recoveredBlock4Step = 239 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 242.
        ].
        recoveredBlock4Step = 242 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ifNotNil: (recoveredBlock4Stack1).
            recoveredBlock4PC := 244.
        ].
        recoveredBlock4Step = 244 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := [
    aml := nil.
    nil
].
    (recoveredValue0) ensure: (recoveredValue1).
    ^true
! !

