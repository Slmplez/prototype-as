"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20133244; bytecode file offset 0xa2fb44"
!RBUserInfo class methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) type: ('message').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) message: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20133260; bytecode file offset 0xa2fb44"
!RBUserInfo class methodsFor: 'recovered'!
warning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) type: ('warning').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) message: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2013327c; bytecode file offset 0xa2fb44"
!RBUserInfo class methodsFor: 'recovered'!
errorMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) type: ('error').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) message: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2019c3b4; bytecode file offset 0xa98cc0"
!RBUserInfo class methodsFor: 'recovered'!
warning: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) initialize.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) type: ('warning').
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) message: (recoveredValue7).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2019c3d4; bytecode file offset 0xa98cc0"
!RBUserInfo class methodsFor: 'recovered'!
errorMessage: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) initialize.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) type: ('error').
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) message: (recoveredValue7).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2019c3f4; bytecode file offset 0xa98cc0"
!RBUserInfo class methodsFor: 'recovered'!
message: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) initialize.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) type: ('message').
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) message: (recoveredValue7).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20509400; bytecode file offset 0xe05ce0"
!RBUserInfo class methodsFor: 'recovered'!
convertStringTemplate: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := '%'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArrayOfSubstringsSeparatedBy: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal5 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := recoveredArg2.
            recoveredBlock53PC := 63.
        ].
        recoveredBlock53Step = 63 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal1.
            recoveredBlock53PC := 66.
        ].
        recoveredBlock53Step = 66 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) at: (recoveredBlock53Stack2).
            recoveredBlock53PC := 68.
        ].
        recoveredBlock53Step = 68 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) isString.
            recoveredBlock53PC := 70.
        ].
        recoveredBlock53Step = 70 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 74] ifFalse: [recoveredBlock53PC := 88].
        ].
        recoveredBlock53Step = 74 ifTrue: [
            recoveredBlock53Stack1 := recoveredArg2.
            recoveredBlock53PC := 77.
        ].
        recoveredBlock53Step = 77 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal1.
            recoveredBlock53PC := 80.
        ].
        recoveredBlock53Step = 80 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) at: (recoveredBlock53Stack2).
            recoveredBlock53PC := 82.
        ].
        recoveredBlock53Step = 82 ifTrue: [
            recoveredLocal2 := recoveredBlock53Stack1.
            recoveredBlock53PC := 85.
        ].
        recoveredBlock53Step = 85 ifTrue: [
            recoveredBlock53PC := 100.
        ].
        recoveredBlock53Step = 88 ifTrue: [
            recoveredBlock53Stack1 := recoveredArg2.
            recoveredBlock53PC := 91.
        ].
        recoveredBlock53Step = 91 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal1.
            recoveredBlock53PC := 94.
        ].
        recoveredBlock53Step = 94 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) at: (recoveredBlock53Stack2).
            recoveredBlock53PC := 96.
        ].
        recoveredBlock53Step = 96 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) printString.
            recoveredBlock53PC := 97.
        ].
        recoveredBlock53Step = 97 ifTrue: [
            recoveredLocal2 := recoveredBlock53Stack1.
            recoveredBlock53PC := 100.
        ].
        recoveredBlock53Step = 100 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal4.
            recoveredBlock53PC := 103.
        ].
        recoveredBlock53Step = 103 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal5.
            recoveredBlock53PC := 106.
        ].
        recoveredBlock53Step = 106 ifTrue: [
            recoveredBlock53Stack3 := recoveredBlock53Arg1.
            recoveredBlock53PC := 107.
        ].
        recoveredBlock53Step = 107 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) at: (recoveredBlock53Stack3).
            recoveredBlock53PC := 109.
        ].
        recoveredBlock53Step = 109 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) , (recoveredBlock53Stack2).
            recoveredBlock53PC := 111.
        ].
        recoveredBlock53Step = 111 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal2.
            recoveredBlock53PC := 114.
        ].
        recoveredBlock53Step = 114 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) , (recoveredBlock53Stack2).
            recoveredBlock53PC := 116.
        ].
        recoveredBlock53Step = 116 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Stack1.
            recoveredBlock53PC := 117.
        ].
        recoveredBlock53Step = 117 ifTrue: [
            recoveredLocal4 := recoveredBlock53Stack2.
            recoveredBlock53PC := 120.
        ].
        recoveredBlock53Step = 120 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 20] ifFalse: [recoveredPC := 176]] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

