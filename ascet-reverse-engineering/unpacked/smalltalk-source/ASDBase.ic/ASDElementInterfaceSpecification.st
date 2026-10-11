"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019c94; bytecode file offset 0x92209c"
!ASDElementInterfaceSpecification methodsFor: 'recovered'!
dbXmlType
    ^'elementInterface'
! !

"ASDBase.ic method 0x2030c018; bytecode file offset 0xc088f8"
!ASDElementInterfaceSpecification methodsFor: 'recovered'!
editorClassForEdition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isRecord.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 21].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := ASDRecordView.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isSenderReceiverInterface.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 26] ifFalse: [recoveredBlock5PC := 29].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := ASDSenderReceiverInterfaceView.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isCalibrationInterface.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 36] ifFalse: [recoveredBlock5PC := 39].
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := ASDCalibrationInterfaceView.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isNVDataInterface.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 46] ifFalse: [recoveredBlock5PC := 50].
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := ASDNVDataInterfaceView.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := ASDElementInterfaceView.
    ^recoveredValue2
! !

