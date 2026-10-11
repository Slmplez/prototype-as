"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000b8c; bytecode file offset 0x161e8"
!EsAPIPrimitiveExpression methodsFor: 'recovered'!
callingConvention
    | recoveredValue0 |
    recoveredValue0 := callingConvention.
    ^recoveredValue0
! !

"parse.ic method 0x20000bb8; bytecode file offset 0x1621c"
!EsAPIPrimitiveExpression methodsFor: 'recovered'!
parameterTypes
    | recoveredValue0 |
    recoveredValue0 := parameterTypes.
    ^recoveredValue0
! !

"parse.ic method 0x20000bdc; bytecode file offset 0x16238"
!EsAPIPrimitiveExpression methodsFor: 'recovered'!
returnType
    | recoveredValue0 |
    recoveredValue0 := returnType.
    ^recoveredValue0
! !

"parse.ic method 0x20003458; bytecode file offset 0x18acc"
!EsAPIPrimitiveExpression methodsFor: 'recovered'!
codeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorInvalidUsage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := sourceStart.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) sourcePosition: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) methodIsAPIPrimitive: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20006bd0; bytecode file offset 0x1c24c"
!EsAPIPrimitiveExpression methodsFor: 'recovered'!
asObject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := callingConvention.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := primitive.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := PlatformFunction.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := library.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack4 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := library.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := parameterTypes.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack6 := [:block28002df0Arg1 | 
    | block28002df0Value0 block28002df0Value1 block28002df0Value2 |
    block28002df0Value0 := block28002df0Arg1.
    block28002df0Value1 := (block28002df0Value0) type.
    block28002df0Value2 := (block28002df0Value1) value.
    block28002df0Value2
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := (recoveredStack5) collect: (recoveredStack6).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := returnType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack6 := (recoveredStack6) type.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack6 := (recoveredStack6) value.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) callingConvention: (recoveredStack2) function: (recoveredStack3) library: (recoveredStack4) parameterTypes: (recoveredStack5) returnType: (recoveredStack6).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x200070b8; bytecode file offset 0x1c720"
!EsAPIPrimitiveExpression methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($<).
    recoveredValue1 := callingConvention.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) space.
    recoveredValue4 := returnType.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) space.
    recoveredValue7 := recoveredArg1.
    (self) printLibraryOn: (recoveredValue7).
    recoveredValue8 := primitive.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9).
    recoveredValue10 := parameterTypes.
    recoveredValue11 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 |
    recoveredBlock50Value0 := recoveredArg1.
    (recoveredBlock50Value0) space.
    recoveredBlock50Value1 := recoveredBlock50Arg1.
    recoveredBlock50Value2 := recoveredArg1.
    recoveredBlock50Value3 := (recoveredBlock50Value1) printOn: (recoveredBlock50Value2).
    recoveredBlock50Value3
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    (recoveredValue12) nextPut: ($>).
    ^self
! !

"parse.ic method 0x20009944; bytecode file offset 0x1efd4"
!EsAPIPrimitiveExpression methodsFor: 'recovered'!
callingConvention: recoveredArg1 function: recoveredArg2 library: recoveredArg3 parameterTypes: recoveredArg4 returnType: recoveredArg5 driver: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            callingConvention := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            primitive := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            library := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            parameterTypes := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            returnType := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := callingConvention.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := PlatformFunction.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidCallingConvention: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := NlsCatESc.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 27.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := callingConvention.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) fatalError: (recoveredStack2) token: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) argumentCount.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := NlsCatESc.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := 28.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) fatalError: (recoveredStack2) token: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := returnType.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidReturnType.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := NlsCatESc.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := 29.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := returnType.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) fatalError: (recoveredStack2) token: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Stack0 recoveredBlock127Stack1 recoveredBlock127Stack2 recoveredBlock127Stack3 recoveredBlock127Stack4 recoveredBlock127PC recoveredBlock127Step recoveredBlock127Done recoveredBlock127Result |
    recoveredBlock127Stack0 := self.
    recoveredBlock127PC := 134.
    recoveredBlock127Done := false.
    [recoveredBlock127Done not] whileTrue: [
        recoveredBlock127Step := recoveredBlock127PC.
        recoveredBlock127Step = 134 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Arg1.
            recoveredBlock127PC := 135.
        ].
        recoveredBlock127Step = 135 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) isValidParameterType.
            recoveredBlock127PC := 137.
        ].
        recoveredBlock127Step = 137 ifTrue: [
            (recoveredBlock127Stack1) ifTrue: [recoveredBlock127PC := 153] ifFalse: [recoveredBlock127PC := 140].
        ].
        recoveredBlock127Step = 140 ifTrue: [
            recoveredBlock127Stack1 := recoveredArg6.
            recoveredBlock127PC := 143.
        ].
        recoveredBlock127Step = 143 ifTrue: [
            recoveredBlock127Stack2 := NlsCatESc.
            recoveredBlock127PC := 145.
        ].
        recoveredBlock127Step = 145 ifTrue: [
            recoveredBlock127Stack3 := 30.
            recoveredBlock127PC := 147.
        ].
        recoveredBlock127Step = 147 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) indexedMsg: (recoveredBlock127Stack3).
            recoveredBlock127PC := 149.
        ].
        recoveredBlock127Step = 149 ifTrue: [
            recoveredBlock127Stack3 := recoveredBlock127Arg1.
            recoveredBlock127PC := 150.
        ].
        recoveredBlock127Step = 150 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) fatalError: (recoveredBlock127Stack2) token: (recoveredBlock127Stack3).
            recoveredBlock127PC := 152.
        ].
        recoveredBlock127Step = 152 ifTrue: [
            ^recoveredBlock127Stack1
        ].
        recoveredBlock127Step = 153 ifTrue: [
            recoveredBlock127Stack1 := nil.
            recoveredBlock127PC := 154.
        ].
        recoveredBlock127Step = 154 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 155.
        ].
        recoveredBlock127Step = 155 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) qualifiers.
            recoveredBlock127PC := 157.
        ].
        recoveredBlock127Step = 157 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) isEmpty.
            recoveredBlock127PC := 159.
        ].
        recoveredBlock127Step = 159 ifTrue: [
            (recoveredBlock127Stack2) ifTrue: [recoveredBlock127PC := 180] ifFalse: [recoveredBlock127PC := 162].
        ].
        recoveredBlock127Step = 162 ifTrue: [
            recoveredBlock127PC := 163.
        ].
        recoveredBlock127Step = 163 ifTrue: [
            recoveredBlock127Stack1 := recoveredArg6.
            recoveredBlock127PC := 166.
        ].
        recoveredBlock127Step = 166 ifTrue: [
            recoveredBlock127Stack2 := NlsCatESc.
            recoveredBlock127PC := 168.
        ].
        recoveredBlock127Step = 168 ifTrue: [
            recoveredBlock127Stack3 := 31.
            recoveredBlock127PC := 170.
        ].
        recoveredBlock127Step = 170 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) indexedMsg: (recoveredBlock127Stack3).
            recoveredBlock127PC := 172.
        ].
        recoveredBlock127Step = 172 ifTrue: [
            recoveredBlock127Stack3 := recoveredBlock127Arg1.
            recoveredBlock127PC := 173.
        ].
        recoveredBlock127Step = 173 ifTrue: [
            recoveredBlock127Stack3 := (recoveredBlock127Stack3) qualifiers.
            recoveredBlock127PC := 175.
        ].
        recoveredBlock127Step = 175 ifTrue: [
            recoveredBlock127Stack3 := (recoveredBlock127Stack3) first.
            recoveredBlock127PC := 177.
        ].
        recoveredBlock127Step = 177 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) fatalError: (recoveredBlock127Stack2) token: (recoveredBlock127Stack3).
            recoveredBlock127PC := 179.
        ].
        recoveredBlock127Step = 179 ifTrue: [
            ^recoveredBlock127Stack1
        ].
        recoveredBlock127Step = 180 ifTrue: [
            recoveredBlock127Result := recoveredBlock127Stack1.
            recoveredBlock127Done := true.
        ].
    ].
    recoveredBlock127Result
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := returnType.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) qualifiers.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := NlsCatESc.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := 31.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := returnType.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := (recoveredStack3) qualifiers.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) fatalError: (recoveredStack2) token: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

