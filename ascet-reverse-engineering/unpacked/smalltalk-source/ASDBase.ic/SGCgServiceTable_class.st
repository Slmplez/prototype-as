"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018470; bytecode file offset 0x92209c"
!SGCgServiceTable class methodsFor: 'recovered'!
maxServiceLabel
    ^'max'
! !

"ASDBase.ic method 0x20018e30; bytecode file offset 0x92209c"
!SGCgServiceTable class methodsFor: 'recovered'!
limitServiceLabel
    ^'limit'
! !

"ASDBase.ic method 0x2002096c; bytecode file offset 0x92209c"
!SGCgServiceTable class methodsFor: 'recovered'!
limitLowerServiceLabel
    ^'limitLower'
! !

"ASDBase.ic method 0x20023dbc; bytecode file offset 0x92209c"
!SGCgServiceTable class methodsFor: 'recovered'!
limitUpperServiceLabel
    ^'limitUpper'
! !

"ASDBase.ic method 0x20023ef4; bytecode file offset 0x92209c"
!SGCgServiceTable class methodsFor: 'recovered'!
minServiceLabel
    ^'min'
! !

"ASDBase.ic method 0x2002465c; bytecode file offset 0x92209c"
!SGCgServiceTable class methodsFor: 'recovered'!
limitSpecialServiceLabel
    ^'limitSpecial'
! !

"ASDBase.ic method 0x2002f0d4; bytecode file offset 0x934580"
!SGCgServiceTable class methodsFor: 'recovered'!
maxServiceKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) maxServiceLabel.
    recoveredValue1 := (recoveredValue0) asUppercase.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036254; bytecode file offset 0x934580"
!SGCgServiceTable class methodsFor: 'recovered'!
minServiceKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) minServiceLabel.
    recoveredValue1 := (recoveredValue0) asUppercase.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cc69c; bytecode file offset 0x9c8f90"
!SGCgServiceTable class methodsFor: 'recovered'!
optionalTwoArgumentsServiceKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) minServiceKey.
    recoveredValue2 := (self) maxServiceKey.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011781c; bytecode file offset 0xa14110"
!SGCgServiceTable class methodsFor: 'recovered'!
complementServiceLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('complement').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c7614Arg1 | 
    | block280c7614Value0 block280c7614Value1 |
    block280c7614Value0 := block280c7614Arg1.
    block280c7614Value1 := (block280c7614Value0) asUppercase.
    block280c7614Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20117834; bytecode file offset 0xa14110"
!SGCgServiceTable class methodsFor: 'recovered'!
interpolationServiceLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('getAt1' 'getAt2' 'getAt1R' 'getAt2R' 'searchDistrib' 'interpolGroup1' 'interpolGroup1R' 'interpolGroup2' 'interpolGroup2R' 'getAtFixed1' 'getAtFixed1R' 'getAtFixed2' 'getAtFixed2R').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c7638Arg1 | 
    | block280c7638Value0 block280c7638Value1 |
    block280c7638Value0 := block280c7638Arg1.
    block280c7638Value1 := (block280c7638Value0) asUppercase.
    block280c7638Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011784c; bytecode file offset 0xa14110"
!SGCgServiceTable class methodsFor: 'recovered'!
arithmeticServiceLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('+' '+l' '-' '-l' '*' '*l' '/' '/l' 'abs' 'neg' '/<' '/<l' 'getHighPart' '*/' '*/l' '*>' '*>l' '%' '%l').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c765cArg1 | 
    | block280c765cValue0 block280c765cValue1 |
    block280c765cValue0 := block280c765cArg1.
    block280c765cValue1 := (block280c765cValue0) asUppercase.
    block280c765cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20122d50; bytecode file offset 0xa1f6a4"
!SGCgServiceTable class methodsFor: 'recovered'!
createForDict: recoveredArg1 fileSource: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) readFromDict: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) fileSource: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2019df58; bytecode file offset 0xa9a82c"
!SGCgServiceTable class methodsFor: 'recovered'!
optionalServiceLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) minServiceLabel.
    recoveredValue2 := (self) maxServiceLabel.
    recoveredValue3 := (self) limitServiceLabel.
    recoveredValue4 := (self) limitUpperServiceLabel.
    recoveredValue5 := (self) limitLowerServiceLabel.
    recoveredValue6 := (self) limitSpecialServiceLabel.
    recoveredValue7 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x205776c4; bytecode file offset 0xe73fb0"
!SGCgServiceTable class methodsFor: 'recovered'!
checkServices: recoveredArg1 ifUnknown: recoveredArg2 ifEmpty: recoveredArg3 ifArithmetic: recoveredArg4 ifOptional: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) arithmeticServiceLabels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolationServiceLabels.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) complementServiceLabels.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionalServiceLabels.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block28112540Arg1 | 
    | block28112540Value0 block28112540Value1 |
    block28112540Value0 := block28112540Arg1.
    block28112540Value1 := (block28112540Value0) asUppercase.
    block28112540Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 :recoveredBlock54Arg2 | 
    | recoveredBlock54Local1 recoveredBlock54Local2 recoveredBlock54Local3 recoveredBlock54Local4 recoveredBlock54Local5 recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54Stack5 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Arg1.
            recoveredBlock54PC := 62.
        ].
        recoveredBlock54Step = 62 ifTrue: [
            recoveredBlock54Stack2 := $|.
            recoveredBlock54PC := 66.
        ].
        recoveredBlock54Step = 66 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) allSubStrings: (recoveredBlock54Stack2).
            recoveredBlock54PC := 68.
        ].
        recoveredBlock54Step = 68 ifTrue: [
            recoveredBlock54Stack2 := 1.
            recoveredBlock54PC := 70.
        ].
        recoveredBlock54Step = 70 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) at: (recoveredBlock54Stack2).
            recoveredBlock54PC := 72.
        ].
        recoveredBlock54Step = 72 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) asUppercase.
            recoveredBlock54PC := 74.
        ].
        recoveredBlock54Step = 74 ifTrue: [
            recoveredBlock54Local5 := recoveredBlock54Stack1.
            recoveredBlock54PC := 76.
        ].
        recoveredBlock54Step = 76 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal8.
            recoveredBlock54PC := 79.
        ].
        recoveredBlock54Step = 79 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Local5.
            recoveredBlock54PC := 81.
        ].
        recoveredBlock54Step = 81 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) includes: (recoveredBlock54Stack2).
            recoveredBlock54PC := 83.
        ].
        recoveredBlock54Step = 83 ifTrue: [
            recoveredBlock54Local4 := recoveredBlock54Stack1.
            recoveredBlock54PC := 84.
        ].
        recoveredBlock54Step = 84 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal7.
            recoveredBlock54PC := 87.
        ].
        recoveredBlock54Step = 87 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Local5.
            recoveredBlock54PC := 89.
        ].
        recoveredBlock54Step = 89 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) includes: (recoveredBlock54Stack2).
            recoveredBlock54PC := 91.
        ].
        recoveredBlock54Step = 91 ifTrue: [
            recoveredBlock54Local3 := recoveredBlock54Stack1.
            recoveredBlock54PC := 92.
        ].
        recoveredBlock54Step = 92 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal6.
            recoveredBlock54PC := 95.
        ].
        recoveredBlock54Step = 95 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Local5.
            recoveredBlock54PC := 97.
        ].
        recoveredBlock54Step = 97 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) includes: (recoveredBlock54Stack2).
            recoveredBlock54PC := 99.
        ].
        recoveredBlock54Step = 99 ifTrue: [
            recoveredBlock54Local2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 100.
        ].
        recoveredBlock54Step = 100 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal5.
            recoveredBlock54PC := 103.
        ].
        recoveredBlock54Step = 103 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Local5.
            recoveredBlock54PC := 105.
        ].
        recoveredBlock54Step = 105 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) includes: (recoveredBlock54Stack2).
            recoveredBlock54PC := 107.
        ].
        recoveredBlock54Step = 107 ifTrue: [
            recoveredBlock54Local1 := recoveredBlock54Stack1.
            recoveredBlock54PC := 108.
        ].
        recoveredBlock54Step = 108 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local4.
            recoveredBlock54PC := 109.
        ].
        recoveredBlock54Step = 109 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 112] ifFalse: [recoveredBlock54PC := 116].
        ].
        recoveredBlock54Step = 112 ifTrue: [
            recoveredBlock54Stack1 := true.
            recoveredBlock54PC := 113.
        ].
        recoveredBlock54Step = 113 ifTrue: [
            recoveredLocal3 := recoveredBlock54Stack1.
            recoveredBlock54PC := 116.
        ].
        recoveredBlock54Step = 116 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local3.
            recoveredBlock54PC := 117.
        ].
        recoveredBlock54Step = 117 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 120] ifFalse: [recoveredBlock54PC := 124].
        ].
        recoveredBlock54Step = 120 ifTrue: [
            recoveredBlock54Stack1 := true.
            recoveredBlock54PC := 121.
        ].
        recoveredBlock54Step = 121 ifTrue: [
            recoveredLocal2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 124.
        ].
        recoveredBlock54Step = 124 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local2.
            recoveredBlock54PC := 125.
        ].
        recoveredBlock54Step = 125 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 128] ifFalse: [recoveredBlock54PC := 132].
        ].
        recoveredBlock54Step = 128 ifTrue: [
            recoveredBlock54Stack1 := true.
            recoveredBlock54PC := 129.
        ].
        recoveredBlock54Step = 129 ifTrue: [
            recoveredLocal1 := recoveredBlock54Stack1.
            recoveredBlock54PC := 132.
        ].
        recoveredBlock54Step = 132 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local1.
            recoveredBlock54PC := 133.
        ].
        recoveredBlock54Step = 133 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 136] ifFalse: [recoveredBlock54PC := 140].
        ].
        recoveredBlock54Step = 136 ifTrue: [
            recoveredBlock54Stack1 := true.
            recoveredBlock54PC := 137.
        ].
        recoveredBlock54Step = 137 ifTrue: [
            recoveredLocal4 := recoveredBlock54Stack1.
            recoveredBlock54PC := 140.
        ].
        recoveredBlock54Step = 140 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local4.
            recoveredBlock54PC := 141.
        ].
        recoveredBlock54Step = 141 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 169] ifFalse: [recoveredBlock54PC := 144].
        ].
        recoveredBlock54Step = 144 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local3.
            recoveredBlock54PC := 145.
        ].
        recoveredBlock54Step = 145 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 169] ifFalse: [recoveredBlock54PC := 148].
        ].
        recoveredBlock54Step = 148 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local2.
            recoveredBlock54PC := 149.
        ].
        recoveredBlock54Step = 149 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 169] ifFalse: [recoveredBlock54PC := 152].
        ].
        recoveredBlock54Step = 152 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local1.
            recoveredBlock54PC := 153.
        ].
        recoveredBlock54Step = 153 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 169] ifFalse: [recoveredBlock54PC := 156].
        ].
        recoveredBlock54Step = 156 ifTrue: [
            recoveredBlock54Stack1 := recoveredArg2.
            recoveredBlock54PC := 159.
        ].
        recoveredBlock54Step = 159 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 161.
        ].
        recoveredBlock54Step = 161 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Arg2.
            recoveredBlock54PC := 163.
        ].
        recoveredBlock54Step = 163 ifTrue: [
            recoveredBlock54Stack4 := 2.
            recoveredBlock54PC := 165.
        ].
        recoveredBlock54Step = 165 ifTrue: [
            recoveredBlock54Stack3 := (recoveredBlock54Stack3) at: (recoveredBlock54Stack4).
            recoveredBlock54PC := 167.
        ].
        recoveredBlock54Step = 167 ifTrue: [
            (recoveredBlock54Stack1) value: (recoveredBlock54Stack2) value: (recoveredBlock54Stack3).
            recoveredBlock54PC := 169.
        ].
        recoveredBlock54Step = 169 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 170.
        ].
        recoveredBlock54Step = 170 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg2.
            recoveredBlock54PC := 172.
        ].
        recoveredBlock54Step = 172 ifTrue: [
            recoveredBlock54Stack3 := 1.
            recoveredBlock54PC := 174.
        ].
        recoveredBlock54Step = 174 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) at: (recoveredBlock54Stack3).
            recoveredBlock54PC := 176.
        ].
        recoveredBlock54Step = 176 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) isEmpty.
            recoveredBlock54PC := 178.
        ].
        recoveredBlock54Step = 178 ifTrue: [
            (recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 182] ifFalse: [recoveredBlock54PC := 196].
        ].
        recoveredBlock54Step = 182 ifTrue: [
            recoveredBlock54PC := 183.
        ].
        recoveredBlock54Step = 183 ifTrue: [
            recoveredBlock54Stack1 := recoveredArg3.
            recoveredBlock54PC := 186.
        ].
        recoveredBlock54Step = 186 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 188.
        ].
        recoveredBlock54Step = 188 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Arg2.
            recoveredBlock54PC := 190.
        ].
        recoveredBlock54Step = 190 ifTrue: [
            recoveredBlock54Stack4 := 2.
            recoveredBlock54PC := 192.
        ].
        recoveredBlock54Step = 192 ifTrue: [
            recoveredBlock54Stack3 := (recoveredBlock54Stack3) at: (recoveredBlock54Stack4).
            recoveredBlock54PC := 194.
        ].
        recoveredBlock54Step = 194 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) value: (recoveredBlock54Stack2) value: (recoveredBlock54Stack3).
            recoveredBlock54PC := 196.
        ].
        recoveredBlock54Step = 196 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 211].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 223].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

