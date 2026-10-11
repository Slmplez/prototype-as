"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001bc0; bytecode file offset 0x8ffcfc"
!DBLargeDictionary class methodsFor: 'recovered'!
classComment
    ^self
! !

"ASDBase.ic method 0x2008daf8; bytecode file offset 0x98a3b0"
!DBLargeDictionary class methodsFor: 'recovered'!
new
    | recoveredValue0 |
    recoveredValue0 := (self) new: (9472).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aa384; bytecode file offset 0x9a6c3c"
!DBLargeDictionary class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) * (256).
    recoveredValue2 := (self) new: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011fb38; bytecode file offset 0xa1c400"
!DBLargeDictionary class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) / (256).
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := super new: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) initialize.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2058d33c; bytecode file offset 0xe89c40"
!DBLargeDictionary class methodsFor: 'recovered'!
benchmark: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 |
    recoveredValue0 := System.
    (recoveredValue0) globalGarbageCollect.
    recoveredValue1 := Time.
    recoveredValue2 := [
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := Dictionary.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) new.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := 0.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal1.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Local1.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) printString.
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Local1.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            (recoveredBlock10Stack2) at: (recoveredBlock10Stack3) put: (recoveredBlock10Stack4).
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            (recoveredBlock10Stack1 isInteger and: [recoveredBlock10Local1 isInteger]) ifTrue: [(recoveredBlock10Local1 + 1 <= recoveredBlock10Stack1) ifTrue: [recoveredBlock10Local1 := recoveredBlock10Local1 + 1. recoveredBlock10PC := 32] ifFalse: [recoveredBlock10Local1 := nil. recoveredBlock10PC := 55]] ifFalse: [recoveredBlock10PC := 45].
        ].
        recoveredBlock10Step = 45 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 46.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Local1.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) + (1).
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Stack3.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack4.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) < (recoveredBlock10Stack3).
            recoveredBlock10PC := 51.
        ].
        recoveredBlock10Step = 51 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 53] ifFalse: [recoveredBlock10PC := 32].
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Stack2 := nil.
            recoveredBlock10PC := 54.
        ].
        recoveredBlock10Step = 54 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 55.
        ].
        recoveredBlock10Step = 55 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue3 := (recoveredValue1) millisecondsToRun: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := SGMonitorStreamDummy.
    recoveredValue5 := (recoveredValue4) create.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := ('Dictionary of size ') , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , ('	').
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := (recoveredValue9) , (recoveredValue11).
    recoveredValue13 := (recoveredValue12) , ('msec').
    (recoveredValue5) addText: (recoveredValue13).
    recoveredValue14 := System.
    (recoveredValue14) globalGarbageCollect.
    recoveredValue15 := Time.
    recoveredValue16 := [
    | recoveredBlock97Local1 recoveredBlock97Stack0 recoveredBlock97Stack1 recoveredBlock97Stack2 recoveredBlock97Stack3 recoveredBlock97Stack4 recoveredBlock97Stack5 recoveredBlock97PC recoveredBlock97Step recoveredBlock97Done recoveredBlock97Result |
    recoveredBlock97Stack0 := self.
    recoveredBlock97PC := 104.
    recoveredBlock97Done := false.
    [recoveredBlock97Done not] whileTrue: [
        recoveredBlock97Step := recoveredBlock97PC.
        recoveredBlock97Step = 104 ifTrue: [
            recoveredBlock97Stack1 := LookupTable.
            recoveredBlock97PC := 106.
        ].
        recoveredBlock97Step = 106 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) new.
            recoveredBlock97PC := 108.
        ].
        recoveredBlock97Step = 108 ifTrue: [
            recoveredLocal1 := recoveredBlock97Stack1.
            recoveredBlock97PC := 111.
        ].
        recoveredBlock97Step = 111 ifTrue: [
            recoveredBlock97Stack1 := 0.
            recoveredBlock97PC := 113.
        ].
        recoveredBlock97Step = 113 ifTrue: [
            recoveredBlock97Local1 := recoveredBlock97Stack1.
            recoveredBlock97PC := 114.
        ].
        recoveredBlock97Step = 114 ifTrue: [
            recoveredBlock97Stack1 := recoveredArg1.
            recoveredBlock97PC := 117.
        ].
        recoveredBlock97Step = 117 ifTrue: [
            recoveredBlock97PC := 129.
        ].
        recoveredBlock97Step = 120 ifTrue: [
            recoveredBlock97Stack2 := recoveredLocal1.
            recoveredBlock97PC := 123.
        ].
        recoveredBlock97Step = 123 ifTrue: [
            recoveredBlock97Stack3 := recoveredBlock97Local1.
            recoveredBlock97PC := 124.
        ].
        recoveredBlock97Step = 124 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) printString.
            recoveredBlock97PC := 126.
        ].
        recoveredBlock97Step = 126 ifTrue: [
            recoveredBlock97Stack4 := recoveredBlock97Local1.
            recoveredBlock97PC := 127.
        ].
        recoveredBlock97Step = 127 ifTrue: [
            (recoveredBlock97Stack2) at: (recoveredBlock97Stack3) put: (recoveredBlock97Stack4).
            recoveredBlock97PC := 129.
        ].
        recoveredBlock97Step = 129 ifTrue: [
            (recoveredBlock97Stack1 isInteger and: [recoveredBlock97Local1 isInteger]) ifTrue: [(recoveredBlock97Local1 + 1 <= recoveredBlock97Stack1) ifTrue: [recoveredBlock97Local1 := recoveredBlock97Local1 + 1. recoveredBlock97PC := 120] ifFalse: [recoveredBlock97Local1 := nil. recoveredBlock97PC := 143]] ifFalse: [recoveredBlock97PC := 133].
        ].
        recoveredBlock97Step = 133 ifTrue: [
            recoveredBlock97Stack2 := recoveredBlock97Stack1.
            recoveredBlock97PC := 134.
        ].
        recoveredBlock97Step = 134 ifTrue: [
            recoveredBlock97Stack3 := recoveredBlock97Local1.
            recoveredBlock97PC := 135.
        ].
        recoveredBlock97Step = 135 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) + (1).
            recoveredBlock97PC := 136.
        ].
        recoveredBlock97Step = 136 ifTrue: [
            recoveredBlock97Stack4 := recoveredBlock97Stack3.
            recoveredBlock97PC := 137.
        ].
        recoveredBlock97Step = 137 ifTrue: [
            recoveredBlock97Local1 := recoveredBlock97Stack4.
            recoveredBlock97PC := 138.
        ].
        recoveredBlock97Step = 138 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) < (recoveredBlock97Stack3).
            recoveredBlock97PC := 139.
        ].
        recoveredBlock97Step = 139 ifTrue: [
            (recoveredBlock97Stack2) ifTrue: [recoveredBlock97PC := 141] ifFalse: [recoveredBlock97PC := 120].
        ].
        recoveredBlock97Step = 141 ifTrue: [
            recoveredBlock97Stack2 := nil.
            recoveredBlock97PC := 142.
        ].
        recoveredBlock97Step = 142 ifTrue: [
            recoveredBlock97Local1 := recoveredBlock97Stack2.
            recoveredBlock97PC := 143.
        ].
        recoveredBlock97Step = 143 ifTrue: [
            recoveredBlock97Result := recoveredBlock97Stack1.
            recoveredBlock97Done := true.
        ].
    ].
    recoveredBlock97Result
].
    recoveredValue17 := (recoveredValue15) millisecondsToRun: (recoveredValue16).
    recoveredLocal2 := recoveredValue17.
    recoveredValue18 := SGMonitorStreamDummy.
    recoveredValue19 := (recoveredValue18) create.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) printString.
    recoveredValue22 := ('LookupTable of size ') , (recoveredValue21).
    recoveredValue23 := (recoveredValue22) , ('	').
    recoveredValue24 := recoveredLocal2.
    recoveredValue25 := (recoveredValue24) printString.
    recoveredValue26 := (recoveredValue23) , (recoveredValue25).
    recoveredValue27 := (recoveredValue26) , ('msec').
    (recoveredValue19) addText: (recoveredValue27).
    recoveredValue28 := System.
    (recoveredValue28) globalGarbageCollect.
    recoveredValue29 := Time.
    recoveredValue30 := [
    | recoveredBlock185Local1 recoveredBlock185Stack0 recoveredBlock185Stack1 recoveredBlock185Stack2 recoveredBlock185Stack3 recoveredBlock185Stack4 recoveredBlock185Stack5 recoveredBlock185PC recoveredBlock185Step recoveredBlock185Done recoveredBlock185Result |
    recoveredBlock185Stack0 := self.
    recoveredBlock185PC := 192.
    recoveredBlock185Done := false.
    [recoveredBlock185Done not] whileTrue: [
        recoveredBlock185Step := recoveredBlock185PC.
        recoveredBlock185Step = 192 ifTrue: [
            recoveredBlock185Stack1 := DBLargeDictionary.
            recoveredBlock185PC := 194.
        ].
        recoveredBlock185Step = 194 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) new.
            recoveredBlock185PC := 196.
        ].
        recoveredBlock185Step = 196 ifTrue: [
            recoveredLocal1 := recoveredBlock185Stack1.
            recoveredBlock185PC := 199.
        ].
        recoveredBlock185Step = 199 ifTrue: [
            recoveredBlock185Stack1 := 0.
            recoveredBlock185PC := 201.
        ].
        recoveredBlock185Step = 201 ifTrue: [
            recoveredBlock185Local1 := recoveredBlock185Stack1.
            recoveredBlock185PC := 202.
        ].
        recoveredBlock185Step = 202 ifTrue: [
            recoveredBlock185Stack1 := recoveredArg1.
            recoveredBlock185PC := 205.
        ].
        recoveredBlock185Step = 205 ifTrue: [
            recoveredBlock185PC := 217.
        ].
        recoveredBlock185Step = 208 ifTrue: [
            recoveredBlock185Stack2 := recoveredLocal1.
            recoveredBlock185PC := 211.
        ].
        recoveredBlock185Step = 211 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Local1.
            recoveredBlock185PC := 212.
        ].
        recoveredBlock185Step = 212 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) printString.
            recoveredBlock185PC := 214.
        ].
        recoveredBlock185Step = 214 ifTrue: [
            recoveredBlock185Stack4 := recoveredBlock185Local1.
            recoveredBlock185PC := 215.
        ].
        recoveredBlock185Step = 215 ifTrue: [
            (recoveredBlock185Stack2) at: (recoveredBlock185Stack3) put: (recoveredBlock185Stack4).
            recoveredBlock185PC := 217.
        ].
        recoveredBlock185Step = 217 ifTrue: [
            (recoveredBlock185Stack1 isInteger and: [recoveredBlock185Local1 isInteger]) ifTrue: [(recoveredBlock185Local1 + 1 <= recoveredBlock185Stack1) ifTrue: [recoveredBlock185Local1 := recoveredBlock185Local1 + 1. recoveredBlock185PC := 208] ifFalse: [recoveredBlock185Local1 := nil. recoveredBlock185PC := 231]] ifFalse: [recoveredBlock185PC := 221].
        ].
        recoveredBlock185Step = 221 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Stack1.
            recoveredBlock185PC := 222.
        ].
        recoveredBlock185Step = 222 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Local1.
            recoveredBlock185PC := 223.
        ].
        recoveredBlock185Step = 223 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) + (1).
            recoveredBlock185PC := 224.
        ].
        recoveredBlock185Step = 224 ifTrue: [
            recoveredBlock185Stack4 := recoveredBlock185Stack3.
            recoveredBlock185PC := 225.
        ].
        recoveredBlock185Step = 225 ifTrue: [
            recoveredBlock185Local1 := recoveredBlock185Stack4.
            recoveredBlock185PC := 226.
        ].
        recoveredBlock185Step = 226 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) < (recoveredBlock185Stack3).
            recoveredBlock185PC := 227.
        ].
        recoveredBlock185Step = 227 ifTrue: [
            (recoveredBlock185Stack2) ifTrue: [recoveredBlock185PC := 229] ifFalse: [recoveredBlock185PC := 208].
        ].
        recoveredBlock185Step = 229 ifTrue: [
            recoveredBlock185Stack2 := nil.
            recoveredBlock185PC := 230.
        ].
        recoveredBlock185Step = 230 ifTrue: [
            recoveredBlock185Local1 := recoveredBlock185Stack2.
            recoveredBlock185PC := 231.
        ].
        recoveredBlock185Step = 231 ifTrue: [
            recoveredBlock185Result := recoveredBlock185Stack1.
            recoveredBlock185Done := true.
        ].
    ].
    recoveredBlock185Result
].
    recoveredValue31 := (recoveredValue29) millisecondsToRun: (recoveredValue30).
    recoveredLocal2 := recoveredValue31.
    recoveredValue32 := recoveredLocal1.
    (recoveredValue32) inspect.
    recoveredValue33 := SGMonitorStreamDummy.
    recoveredValue34 := (recoveredValue33) create.
    recoveredValue35 := recoveredArg1.
    recoveredValue36 := (recoveredValue35) printString.
    recoveredValue37 := ('DBLargeDictionary of size ') , (recoveredValue36).
    recoveredValue38 := (recoveredValue37) , ('	').
    recoveredValue39 := recoveredLocal2.
    recoveredValue40 := (recoveredValue39) printString.
    recoveredValue41 := (recoveredValue38) , (recoveredValue40).
    recoveredValue42 := (recoveredValue41) , ('msec').
    (recoveredValue34) addText: (recoveredValue42).
    ^self
! !

