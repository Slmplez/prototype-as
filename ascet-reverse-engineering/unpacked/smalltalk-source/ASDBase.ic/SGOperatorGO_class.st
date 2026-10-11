"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200133a4; bytecode file offset 0x912098"
!SGOperatorGO class methodsFor: 'recovered'!
dbClass
    | recoveredValue0 |
    recoveredValue0 := SGOperatorGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017474; bytecode file offset 0x92209c"
!SGOperatorGO class methodsFor: 'recovered'!
mappingTable
    | recoveredValue0 |
    recoveredValue0 := (LookupTable new) elementCount: (23); keyArray: (#(nil nil nil nil nil nil nil nil nil nil nil 'OperationsVerify' 'OperationsMax' 'OperationsDiv' 'OperationsNeg' nil 'OperationsSmaller' 'OperationsAnd' 'OperationsMul' nil 'OperationsGreater' nil nil 'OperationsMod' 'OperationsSmallerEqual' 'OperationsAbs' nil nil nil nil nil nil nil nil nil nil nil 'OperationsNotEqual' nil nil nil nil nil nil 'OperationsOr' nil nil nil nil 'OperationsAdd' nil nil nil nil nil 'OperationsLimit' 'OperationsNot' 'OperationsGreaterEqual' 'OperationsWrapAround' nil 'OperationsBetween' 'OperationsSub' nil nil nil 'OperationsEqual' nil nil nil nil nil nil nil nil nil nil nil nil nil 'OperationsAssert' nil nil nil 'OperationsMin' nil nil nil nil)); valueArray: (#(nil nil nil nil nil nil nil nil nil nil nil 'verify' 'max' '/' 'neg' nil '<' '&' '*' nil '>' nil nil '%' '<=' 'abs' nil nil nil nil nil nil nil nil nil nil nil '!!=' nil nil nil nil nil nil '|' nil nil nil nil '+' nil nil nil nil nil 'conversion' 'not' '>=' 'conversion' nil 'bet' '-' nil nil nil '=' nil nil nil nil nil nil nil nil nil nil nil nil nil 'assert' nil nil nil 'min' nil nil nil nil)); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201595c4; bytecode file offset 0xa55e88"
!SGOperatorGO class methodsFor: 'recovered'!
implCastOperators
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) arithmeticOperators.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('abs').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('neg').
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201d063c; bytecode file offset 0xaccf08"
!SGOperatorGO class methodsFor: 'recovered'!
boolDataOperators
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('&').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('|').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('not').
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201df724; bytecode file offset 0xadbfec"
!SGOperatorGO class methodsFor: 'recovered'!
mappingTypes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') = ('BDEIcons').
    recoveredValue1 := (self) mappingTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) asString.
    recoveredBlock14Value1
].
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2024dea0; bytecode file offset 0xb4a774"
!SGOperatorGO class methodsFor: 'recovered'!
arithmeticOperators
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('+').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('*').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('/').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('-').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ('%').
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202863ec; bytecode file offset 0xb82cc4"
!SGOperatorGO class methodsFor: 'recovered'!
addRemoveInputOperators
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('+').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('*').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('&').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('|').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ('min').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) add: ('max').
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202b6628; bytecode file offset 0xbb2f04"
!SGOperatorGO class methodsFor: 'recovered'!
boolDataResultOperators
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('>').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('<').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('<=').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('>=').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ('=').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) add: ('!!=').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) add: ('verify').
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2037fda4; bytecode file offset 0xc7c68c"
!SGOperatorGO class methodsFor: 'recovered'!
createWith: recoveredArg1 lineStyle: recoveredArg2 type: recoveredArg3 inputs: recoveredArg4 size: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := super createWith: (recoveredStack1) lineStyle: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypes: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) xAxis: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) yAxis: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) initAxisFor: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) createDefaultFrameGO.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) buildIconGO.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) buildInterfaceFor: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) connectorNamesAsString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c0aa8; bytecode file offset 0xdbd3f0"
!SGOperatorGO class methodsFor: 'recovered'!
implCastNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('+') put: ('add').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('-') put: ('sub').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('*') put: ('mul').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('/') put: ('div').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('%') put: ('mod').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('&') put: ('and').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('|') put: ('or').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('>') put: ('greater').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('<') put: ('smaller').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('<=') put: ('smallerequal').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('>=') put: ('greaterequal').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('=') put: ('equal').
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('!!=') put: ('notequal').
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: ('abs') put: ('abs').
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: ('min') put: ('min').
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: ('max') put: ('max').
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: ('bet') put: ('between').
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: ('not') put: ('not').
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: ('neg') put: ('neg').
    (recoveredValue2) at: ('verify') put: ('verify').
    recoveredValue22 := recoveredLocal1.
    ^recoveredValue22
! !

"ASDBase.ic method 0x204d6290; bytecode file offset 0xdd2ba8"
!SGOperatorGO class methodsFor: 'recovered'!
operatorInputSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('+') put: (nil).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('-') put: (2).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('*') put: (nil).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('/') put: (2).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('%') put: (2).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('&') put: (nil).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('|') put: (nil).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('>') put: (2).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('<') put: (2).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('<=') put: (2).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('>=') put: (2).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('=') put: (2).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('!!=') put: (2).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: ('abs') put: (1).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: ('min') put: (nil).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: ('max') put: (nil).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: ('bet') put: (3).
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: ('not') put: (1).
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: ('neg') put: (1).
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: ('verify') put: (1).
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: ('conversion') put: (1).
    (recoveredValue2) at: ('assert') put: (1).
    recoveredValue24 := recoveredLocal1.
    ^recoveredValue24
! !

"ASDBase.ic method 0x204f482c; bytecode file offset 0xdf1148"
!SGOperatorGO class methodsFor: 'recovered'!
operatorOutputTypeID
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('+') put: (2).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('-') put: (2).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('*') put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('/') put: (2).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('%') put: (2).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('&') put: (1).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('|') put: (1).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('>') put: (1).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('<') put: (1).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('<=') put: (1).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('>=') put: (1).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('=') put: (1).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('!!=') put: (1).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: ('abs') put: (2).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: ('min') put: (6).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: ('max') put: (6).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: ('bet') put: (1).
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: ('not') put: (1).
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: ('neg') put: (2).
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: ('verify') put: (1).
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: ('limit') put: (2).
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: ('wrapAround') put: (2).
    (recoveredValue2) at: ('conversion') put: (2).
    recoveredValue25 := recoveredLocal1.
    ^recoveredValue25
! !

"ASDBase.ic method 0x205010d8; bytecode file offset 0xdfda58"
!SGOperatorGO class methodsFor: 'recovered'!
operatorIcons
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := ('Kli') = ('BDEIcons').
    recoveredValue1 := Dictionary.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) at: ('+') put: ('BDEADD').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) at: ('-') put: ('BDESUB').
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) at: ('*') put: ('BDEMUL').
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) at: ('/') put: ('BDEDIV').
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) at: ('%') put: ('BDEMOD').
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) at: ('&') put: ('BDEAND').
    recoveredValue10 := recoveredValue3.
    (recoveredValue10) at: ('|') put: ('BDEOR').
    recoveredValue11 := recoveredValue3.
    (recoveredValue11) at: ('>') put: ('BDEGREATER').
    recoveredValue12 := recoveredValue3.
    (recoveredValue12) at: ('<') put: ('BDESMALLER').
    recoveredValue13 := recoveredValue3.
    (recoveredValue13) at: ('<=') put: ('BDESMALLEREQUAL').
    recoveredValue14 := recoveredValue3.
    (recoveredValue14) at: ('>=') put: ('BDEGREATEREQUAL').
    recoveredValue15 := recoveredValue3.
    (recoveredValue15) at: ('=') put: ('BDEEQUAL').
    recoveredValue16 := recoveredValue3.
    (recoveredValue16) at: ('!!=') put: ('BDENOTEQUAL').
    recoveredValue17 := recoveredValue3.
    (recoveredValue17) at: ('abs') put: ('BDEABS').
    recoveredValue18 := recoveredValue3.
    (recoveredValue18) at: ('min') put: ('BDEMIN').
    recoveredValue19 := recoveredValue3.
    (recoveredValue19) at: ('max') put: ('BDEMAX').
    recoveredValue20 := recoveredValue3.
    (recoveredValue20) at: ('bet') put: ('BDEBETWEEN').
    recoveredValue21 := recoveredValue3.
    (recoveredValue21) at: ('not') put: ('BDENOT').
    recoveredValue22 := recoveredValue3.
    (recoveredValue22) at: ('neg') put: ('BDENEG').
    recoveredValue23 := recoveredValue3.
    (recoveredValue23) at: ('verify') put: ('BDEVERIFY').
    recoveredValue24 := recoveredValue3.
    (recoveredValue24) at: ('limit') put: ('OPERATIONSLIMIT').
    recoveredValue25 := recoveredValue3.
    (recoveredValue25) at: ('wrapAround') put: ('OPERATIONSWRAPAROUND').
    (recoveredValue3) at: ('assert') put: ('OPERATIONSASSERT').
    recoveredValue26 := recoveredLocal1.
    ^recoveredValue26
! !

"ASDBase.ic method 0x20502f40; bytecode file offset 0xdff860"
!SGOperatorGO class methodsFor: 'recovered'!
operatorInputTypeID
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('+') put: (2).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('-') put: (2).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('*') put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('/') put: (2).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('%') put: (2).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('&') put: (1).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('|') put: (1).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('>') put: (2).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('<') put: (2).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('<=') put: (2).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('>=') put: (2).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('=') put: (0).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('!!=') put: (0).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: ('abs') put: (2).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: ('min') put: (2).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: ('max') put: (2).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: ('bet') put: (2).
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: ('not') put: (1).
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: ('neg') put: (2).
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: ('verify') put: (0).
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: ('limit') put: (2).
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: ('wrapAround') put: (2).
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) at: ('assert') put: (2).
    (recoveredValue2) at: ('conversion') put: (2).
    recoveredValue26 := recoveredLocal1.
    ^recoveredValue26
! !

