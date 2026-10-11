"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20056e44; bytecode file offset 0x953708"
!SGCgServiceSettings methodsFor: 'recovered'!
optionalServiceKeyExisits: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) optionalServiceKeyEntries: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200571d8; bytecode file offset 0x956284"
!SGCgServiceSettings methodsFor: 'recovered'!
optionalServiceKeyEntries: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) arithServiceTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionalServiceKeyEntries: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f518; bytecode file offset 0x95c4f4"
!SGCgServiceSettings methodsFor: 'recovered'!
usesArithOpServices
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) usesArithOpServicesKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f644; bytecode file offset 0x95c4f4"
!SGCgServiceSettings methodsFor: 'recovered'!
usesOptionalServices
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) usesOptionalServicesKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20067f44; bytecode file offset 0x965b90"
!SGCgServiceSettings methodsFor: 'recovered'!
fileSource
    | recoveredValue0 |
    recoveredValue0 := fileSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200698c0; bytecode file offset 0x966bdc"
!SGCgServiceSettings methodsFor: 'recovered'!
arithServices
    | recoveredValue0 |
    recoveredValue0 := arithServices.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b0bc; bytecode file offset 0x967a18"
!SGCgServiceSettings methodsFor: 'recovered'!
arithServiceTable
    | recoveredValue0 |
    recoveredValue0 := arithServiceTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b610; bytecode file offset 0x96873c"
!SGCgServiceSettings methodsFor: 'recovered'!
interpolation
    | recoveredValue0 |
    recoveredValue0 := interpolation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c2ac; bytecode file offset 0x9692b0"
!SGCgServiceSettings methodsFor: 'recovered'!
interpolationMapping
    | recoveredValue0 |
    recoveredValue0 := interpolationMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ca78; bytecode file offset 0x969c04"
!SGCgServiceSettings methodsFor: 'recovered'!
redundantTypeMap
    | recoveredValue0 |
    recoveredValue0 := redundantTypeMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009a348; bytecode file offset 0x997194"
!SGCgServiceSettings methodsFor: 'recovered'!
mappedInterpolation: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interpolationMapping.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) mappedInterpolation: (recoveredValue1) source: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200abf4c; bytecode file offset 0x9a894c"
!SGCgServiceSettings methodsFor: 'recovered'!
createFileSourceLineNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fileSource.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) lineNumber: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b9db0; bytecode file offset 0x9b6c88"
!SGCgServiceSettings methodsFor: 'recovered'!
usesArithOpServices: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) usesArithOpServicesKey.
    recoveredValue2 := recoveredArg1.
    (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba33c; bytecode file offset 0x9b6c88"
!SGCgServiceSettings methodsFor: 'recovered'!
usesOptionalServices: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) usesOptionalServicesKey.
    recoveredValue2 := recoveredArg1.
    (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c2a08; bytecode file offset 0x9bf474"
!SGCgServiceSettings methodsFor: 'recovered'!
interpolation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interpolation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3084; bytecode file offset 0x9bfde0"
!SGCgServiceSettings methodsFor: 'recovered'!
interpolationMapping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interpolationMapping := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200de8f0; bytecode file offset 0x9db1ac"
!SGCgServiceSettings methodsFor: 'recovered'!
optionalServiceExists: recoveredArg1 issueErrorOnMissingFor: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) arithServiceTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) optionalServiceExists: (recoveredValue1) issueErrorOnMissingFor: (recoveredValue2) source: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) notNil.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200fa00c; bytecode file offset 0x9f6a08"
!SGCgServiceSettings methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    arithServices := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2011ed30; bytecode file offset 0xa1b5ec"
!SGCgServiceSettings methodsFor: 'recovered'!
isValidIntType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isValidUIntType: (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidSIntType: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201310f0; bytecode file offset 0xa2d9b0"
!SGCgServiceSettings methodsFor: 'recovered'!
definesFloatService: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '*r64*'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) match: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := '*r32*'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) match: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20131118; bytecode file offset 0xa2da00"
!SGCgServiceSettings methodsFor: 'recovered'!
isValidFloatType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '*r*'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) match: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013112c; bytecode file offset 0xa2da00"
!SGCgServiceSettings methodsFor: 'recovered'!
isValidUIntType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '*u*'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) match: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20131140; bytecode file offset 0xa2da00"
!SGCgServiceSettings methodsFor: 'recovered'!
isValidSIntType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '*s*'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) match: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201582c4; bytecode file offset 0xa54dbc"
!SGCgServiceSettings methodsFor: 'recovered'!
ileErrorNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := recoveredArg4.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue5) category: ('Ile') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20158388; bytecode file offset 0xa54dbc"
!SGCgServiceSettings methodsFor: 'recovered'!
ileWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := recoveredArg4.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue5) category: ('Ile') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20188f44; bytecode file offset 0xa85860"
!SGCgServiceSettings methodsFor: 'recovered'!
ileErrorNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 source: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := recoveredArg5.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue6) category: ('Ile') source: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20188f7c; bytecode file offset 0xa85860"
!SGCgServiceSettings methodsFor: 'recovered'!
ileWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 source: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := recoveredArg5.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue6) category: ('Ile') source: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201a9ad0; bytecode file offset 0xaa6408"
!SGCgServiceSettings methodsFor: 'recovered'!
ileErrorNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 source: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := recoveredArg6.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue7) category: ('Ile') source: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201ac080; bytecode file offset 0xaa8948"
!SGCgServiceSettings methodsFor: 'recovered'!
isDoublePrecisionInterpolation: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolationForId: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAliasInterpolation.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) interpolationMapping.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappedInterpolation: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolationForId: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDoublePrecision.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ce3a0; bytecode file offset 0xacac60"
!SGCgServiceSettings methodsFor: 'recovered'!
interpolationForId: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolation.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) identifier.
    recoveredBlock12Value2 := recoveredArg1.
    recoveredBlock12Value3 := (recoveredBlock12Value1) = (recoveredBlock12Value2).
    recoveredBlock12Value3
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202553f0; bytecode file offset 0xb51cb8"
!SGCgServiceSettings methodsFor: 'recovered'!
definesIntType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '*8*'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) match: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '*16*'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) match: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := '*u*'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) match: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := '*s*'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) match: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20257abc; bytecode file offset 0xb5437c"
!SGCgServiceSettings methodsFor: 'recovered'!
hasSameBitWidth: recoveredArg1 as: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202931d8; bytecode file offset 0xb8faa0"
!SGCgServiceSettings methodsFor: 'recovered'!
lookupRedundantType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) redundantTypeMap.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) redundantTypeMap.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := '*'.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := [
    '*'
].
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) at: (recoveredBlock6Stack1) ifAbsent: (recoveredBlock6Stack2).
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultRedundantTypeFor: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fc8d0; bytecode file offset 0xbf919c"
!SGCgServiceSettings methodsFor: 'recovered'!
defaultRedundantTypeFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 's8'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'u8'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'u8'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 's16'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'u16'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'u16'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'u32'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c119c; bytecode file offset 0xdbda98"
!SGCgServiceSettings methodsFor: 'recovered'!
arithServices: recoveredArg1 fileSource: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    arithServices := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    fileSource := recoveredValue1.
    (self) usesArithOpServices: (false).
    (self) usesOptionalServices: (false).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := SGCgAdaptIntervalAttributes.
    (recoveredValue4) useServices: (false).
    recoveredValue5 := SGCgServiceTable.
    recoveredValue6 := (self) arithServices.
    recoveredValue7 := [:recoveredBlock37Arg1 :recoveredBlock37Arg2 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 recoveredBlock37Value7 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg2.
    recoveredBlock37Value2 := (recoveredBlock37Value1) file.
    recoveredBlock37Value3 := recoveredBlock37Arg2.
    recoveredBlock37Value4 := (self) createFileSourceLineNumber: (recoveredBlock37Value3).
    (self) ileWarningNo: (21) with: (recoveredBlock37Value0) with: (recoveredBlock37Value2) source: (recoveredBlock37Value4).
    recoveredBlock37Value5 := recoveredLocal1.
    recoveredBlock37Value6 := recoveredBlock37Arg1.
    recoveredBlock37Value7 := (recoveredBlock37Value5) add: (recoveredBlock37Value6).
    recoveredBlock37Value7
].
    recoveredValue8 := [:recoveredBlock66Arg1 :recoveredBlock66Arg2 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 recoveredBlock66Value5 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := recoveredArg2.
    recoveredBlock66Value2 := (recoveredBlock66Value1) file.
    recoveredBlock66Value3 := recoveredBlock66Arg2.
    recoveredBlock66Value4 := (self) createFileSourceLineNumber: (recoveredBlock66Value3).
    recoveredBlock66Value5 := (self) ileErrorNo: (25) with: (recoveredBlock66Value0) with: (recoveredBlock66Value2) source: (recoveredBlock66Value4).
    recoveredBlock66Value5
].
    recoveredValue9 := [
    | recoveredBlock88Value0 recoveredBlock88Value1 |
    (self) usesArithOpServices: (true).
    recoveredBlock88Value0 := SGCgAdaptIntervalAttributes.
    recoveredBlock88Value1 := (recoveredBlock88Value0) useServices: (true).
    recoveredBlock88Value1
].
    recoveredValue10 := [
    | recoveredBlock103Value0 |
    recoveredBlock103Value0 := (self) usesOptionalServices: (true).
    recoveredBlock103Value0
].
    (recoveredValue5) checkServices: (recoveredValue6) ifUnknown: (recoveredValue7) ifEmpty: (recoveredValue8) ifArithmetic: (recoveredValue9) ifOptional: (recoveredValue10).
    recoveredValue11 := (self) arithServices.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) removeAllKeys: (recoveredValue12).
    recoveredValue13 := recoveredArg2.
    (self) prepareOptionalServiceTypes: (recoveredValue13).
    recoveredValue14 := recoveredArg2.
    (self) prepareComplementTypes: (recoveredValue14).
    recoveredValue15 := SGCgServiceTable.
    recoveredValue16 := (self) arithServices.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (recoveredValue15) createForDict: (recoveredValue16) fileSource: (recoveredValue17).
    arithServiceTable := recoveredValue18.
    ^self
! !

"ASDBase.ic method 0x205e4960; bytecode file offset 0xee12a8"
!SGCgServiceSettings methodsFor: 'recovered'!
prepareComplementTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SGCgServiceTable.
    recoveredValue1 := (recoveredValue0) complementServiceLabels.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    redundantTypeMap := recoveredValue7.
    recoveredValue8 := (self) arithServices.
    recoveredValue9 := [:recoveredBlock29Arg1 :recoveredBlock29Arg2 | 
    | recoveredBlock29Local1 recoveredBlock29Local2 recoveredBlock29Local3 recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29Stack5 recoveredBlock29Stack6 recoveredBlock29Stack7 recoveredBlock29Stack8 recoveredBlock29Stack9 recoveredBlock29Stack10 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 39.
        ].
        recoveredBlock29Step = 39 ifTrue: [
            recoveredBlock29Stack2 := $|.
            recoveredBlock29PC := 42.
        ].
        recoveredBlock29Step = 42 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) allSubStrings: (recoveredBlock29Stack2).
            recoveredBlock29PC := 44.
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29Local3 := recoveredBlock29Stack1.
            recoveredBlock29PC := 47.
        ].
        recoveredBlock29Step = 47 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal3.
            recoveredBlock29PC := 51.
        ].
        recoveredBlock29Step = 51 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local3.
            recoveredBlock29PC := 54.
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) first.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) asUppercase.
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) includes: (recoveredBlock29Stack3).
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 64] ifFalse: [recoveredBlock29PC := 362].
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29PC := 65.
        ].
        recoveredBlock29Step = 65 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 66.
        ].
        recoveredBlock29Step = 66 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local3.
            recoveredBlock29PC := 69.
        ].
        recoveredBlock29Step = 69 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) size.
            recoveredBlock29PC := 71.
        ].
        recoveredBlock29Step = 71 ifTrue: [
            recoveredBlock29Stack3 := 2.
            recoveredBlock29PC := 73.
        ].
        recoveredBlock29Step = 73 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) >= (recoveredBlock29Stack3).
            recoveredBlock29PC := 74.
        ].
        recoveredBlock29Step = 74 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 78] ifFalse: [recoveredBlock29PC := 362].
        ].
        recoveredBlock29Step = 78 ifTrue: [
            recoveredBlock29PC := 79.
        ].
        recoveredBlock29Step = 79 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local3.
            recoveredBlock29PC := 82.
        ].
        recoveredBlock29Step = 82 ifTrue: [
            recoveredBlock29Stack2 := 2.
            recoveredBlock29PC := 84.
        ].
        recoveredBlock29Step = 84 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) at: (recoveredBlock29Stack2).
            recoveredBlock29PC := 86.
        ].
        recoveredBlock29Step = 86 ifTrue: [
            recoveredBlock29Local2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 89.
        ].
        recoveredBlock29Step = 89 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local3.
            recoveredBlock29PC := 92.
        ].
        recoveredBlock29Step = 92 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) size.
            recoveredBlock29PC := 94.
        ].
        recoveredBlock29Step = 94 ifTrue: [
            recoveredBlock29Stack2 := 3.
            recoveredBlock29PC := 96.
        ].
        recoveredBlock29Step = 96 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) >= (recoveredBlock29Stack2).
            recoveredBlock29PC := 97.
        ].
        recoveredBlock29Step = 97 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 100] ifFalse: [recoveredBlock29PC := 236].
        ].
        recoveredBlock29Step = 100 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local3.
            recoveredBlock29PC := 103.
        ].
        recoveredBlock29Step = 103 ifTrue: [
            recoveredBlock29Stack2 := 3.
            recoveredBlock29PC := 105.
        ].
        recoveredBlock29Step = 105 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) at: (recoveredBlock29Stack2).
            recoveredBlock29PC := 107.
        ].
        recoveredBlock29Step = 107 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 110.
        ].
        recoveredBlock29Step = 110 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local1.
            recoveredBlock29PC := 113.
        ].
        recoveredBlock29Step = 113 ifTrue: [
            recoveredBlock29Stack2 := 'r32'.
            recoveredBlock29PC := 115.
        ].
        recoveredBlock29Step = 115 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) = (recoveredBlock29Stack2).
            recoveredBlock29PC := 116.
        ].
        recoveredBlock29Step = 116 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 130] ifFalse: [recoveredBlock29PC := 120].
        ].
        recoveredBlock29Step = 120 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local1.
            recoveredBlock29PC := 123.
        ].
        recoveredBlock29Step = 123 ifTrue: [
            recoveredBlock29Stack2 := 'r64'.
            recoveredBlock29PC := 125.
        ].
        recoveredBlock29Step = 125 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) = (recoveredBlock29Stack2).
            recoveredBlock29PC := 126.
        ].
        recoveredBlock29Step = 126 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 130] ifFalse: [recoveredBlock29PC := 158].
        ].
        recoveredBlock29Step = 130 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 131.
        ].
        recoveredBlock29Step = 131 ifTrue: [
            recoveredBlock29Stack2 := 23.
            recoveredBlock29PC := 133.
        ].
        recoveredBlock29Step = 133 ifTrue: [
            recoveredBlock29Stack3 := 'Float'.
            recoveredBlock29PC := 135.
        ].
        recoveredBlock29Step = 135 ifTrue: [
            recoveredBlock29Stack4 := 'redundant'.
            recoveredBlock29PC := 137.
        ].
        recoveredBlock29Step = 137 ifTrue: [
            recoveredBlock29Stack5 := recoveredBlock29Arg1.
            recoveredBlock29PC := 140.
        ].
        recoveredBlock29Step = 140 ifTrue: [
            recoveredBlock29Stack6 := recoveredArg1.
            recoveredBlock29PC := 143.
        ].
        recoveredBlock29Step = 143 ifTrue: [
            recoveredBlock29Stack6 := (recoveredBlock29Stack6) file.
            recoveredBlock29PC := 145.
        ].
        recoveredBlock29Step = 145 ifTrue: [
            recoveredBlock29Stack7 := self.
            recoveredBlock29PC := 146.
        ].
        recoveredBlock29Step = 146 ifTrue: [
            recoveredBlock29Stack8 := recoveredBlock29Arg2.
            recoveredBlock29PC := 149.
        ].
        recoveredBlock29Step = 149 ifTrue: [
            recoveredBlock29Stack9 := 2.
            recoveredBlock29PC := 151.
        ].
        recoveredBlock29Step = 151 ifTrue: [
            recoveredBlock29Stack8 := (recoveredBlock29Stack8) at: (recoveredBlock29Stack9).
            recoveredBlock29PC := 153.
        ].
        recoveredBlock29Step = 153 ifTrue: [
            recoveredBlock29Stack7 := (recoveredBlock29Stack7) createFileSourceLineNumber: (recoveredBlock29Stack8).
            recoveredBlock29PC := 155.
        ].
        recoveredBlock29Step = 155 ifTrue: [
            (recoveredBlock29Stack1) ileErrorNo: (recoveredBlock29Stack2) with: (recoveredBlock29Stack3) with: (recoveredBlock29Stack4) with: (recoveredBlock29Stack5) with: (recoveredBlock29Stack6) source: (recoveredBlock29Stack7).
            recoveredBlock29PC := 158.
        ].
        recoveredBlock29Step = 158 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local1.
            recoveredBlock29PC := 161.
        ].
        recoveredBlock29Step = 161 ifTrue: [
            recoveredBlock29Stack2 := '*'.
            recoveredBlock29PC := 163.
        ].
        recoveredBlock29Step = 163 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) = (recoveredBlock29Stack2).
            recoveredBlock29PC := 164.
        ].
        recoveredBlock29Step = 164 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 168] ifFalse: [recoveredBlock29PC := 180].
        ].
        recoveredBlock29Step = 168 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 169.
        ].
        recoveredBlock29Step = 169 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local2.
            recoveredBlock29PC := 172.
        ].
        recoveredBlock29Step = 172 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) defaultRedundantTypeFor: (recoveredBlock29Stack2).
            recoveredBlock29PC := 174.
        ].
        recoveredBlock29Step = 174 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 177.
        ].
        recoveredBlock29Step = 177 ifTrue: [
            recoveredBlock29PC := 232.
        ].
        recoveredBlock29Step = 180 ifTrue: [
            recoveredBlock29Stack1 := SGTypeDefinitions.
            recoveredBlock29PC := 182.
        ].
        recoveredBlock29Step = 182 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) allArithmeticImplTypeClasses.
            recoveredBlock29PC := 184.
        ].
        recoveredBlock29Step = 184 ifTrue: [
            recoveredBlock29Stack2 := [:recoveredBlock29Block184Arg1 | 
    | recoveredBlock29Block184Value0 recoveredBlock29Block184Value1 recoveredBlock29Block184Value2 recoveredBlock29Block184Value3 recoveredBlock29Block184Value4 |
    recoveredBlock29Block184Value0 := recoveredBlock29Block184Arg1.
    recoveredBlock29Block184Value1 := (recoveredBlock29Block184Value0) createDefault.
    recoveredBlock29Block184Value2 := (recoveredBlock29Block184Value1) asShortCType.
    recoveredBlock29Block184Value3 := recoveredBlock29Local1.
    recoveredBlock29Block184Value4 := (recoveredBlock29Block184Value2) = (recoveredBlock29Block184Value3).
    recoveredBlock29Block184Value4
].
            recoveredBlock29PC := 200.
        ].
        recoveredBlock29Step = 200 ifTrue: [
            recoveredBlock29Stack3 := [
    | recoveredBlock29Block200Value0 recoveredBlock29Block200Value1 recoveredBlock29Block200Value2 recoveredBlock29Block200Value3 recoveredBlock29Block200Value4 recoveredBlock29Block200Value5 recoveredBlock29Block200Value6 |
    recoveredBlock29Block200Value0 := recoveredBlock29Arg1.
    recoveredBlock29Block200Value1 := recoveredArg1.
    recoveredBlock29Block200Value2 := (recoveredBlock29Block200Value1) file.
    recoveredBlock29Block200Value3 := recoveredBlock29Arg2.
    recoveredBlock29Block200Value4 := (recoveredBlock29Block200Value3) at: (2).
    recoveredBlock29Block200Value5 := (self) createFileSourceLineNumber: (recoveredBlock29Block200Value4).
    recoveredBlock29Block200Value6 := (self) ileErrorNo: (24) with: (recoveredBlock29Block200Value0) with: (recoveredBlock29Block200Value2) source: (recoveredBlock29Block200Value5).
    recoveredBlock29Block200Value6
].
            recoveredBlock29PC := 230.
        ].
        recoveredBlock29Step = 230 ifTrue: [
            (recoveredBlock29Stack1) detect: (recoveredBlock29Stack2) ifNone: (recoveredBlock29Stack3).
            recoveredBlock29PC := 232.
        ].
        recoveredBlock29Step = 232 ifTrue: [
            recoveredBlock29PC := 274.
        ].
        recoveredBlock29Step = 236 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 237.
        ].
        recoveredBlock29Step = 237 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local2.
            recoveredBlock29PC := 240.
        ].
        recoveredBlock29Step = 240 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) defaultRedundantTypeFor: (recoveredBlock29Stack2).
            recoveredBlock29PC := 242.
        ].
        recoveredBlock29Step = 242 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 245.
        ].
        recoveredBlock29Step = 245 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 246.
        ].
        recoveredBlock29Step = 246 ifTrue: [
            recoveredBlock29Stack2 := 201.
            recoveredBlock29PC := 250.
        ].
        recoveredBlock29Step = 250 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local2.
            recoveredBlock29PC := 253.
        ].
        recoveredBlock29Step = 253 ifTrue: [
            recoveredBlock29Stack4 := recoveredArg1.
            recoveredBlock29PC := 256.
        ].
        recoveredBlock29Step = 256 ifTrue: [
            recoveredBlock29Stack4 := (recoveredBlock29Stack4) file.
            recoveredBlock29PC := 258.
        ].
        recoveredBlock29Step = 258 ifTrue: [
            recoveredBlock29Stack5 := recoveredBlock29Local1.
            recoveredBlock29PC := 261.
        ].
        recoveredBlock29Step = 261 ifTrue: [
            recoveredBlock29Stack6 := self.
            recoveredBlock29PC := 262.
        ].
        recoveredBlock29Step = 262 ifTrue: [
            recoveredBlock29Stack7 := recoveredBlock29Arg2.
            recoveredBlock29PC := 265.
        ].
        recoveredBlock29Step = 265 ifTrue: [
            recoveredBlock29Stack8 := 2.
            recoveredBlock29PC := 267.
        ].
        recoveredBlock29Step = 267 ifTrue: [
            recoveredBlock29Stack7 := (recoveredBlock29Stack7) at: (recoveredBlock29Stack8).
            recoveredBlock29PC := 269.
        ].
        recoveredBlock29Step = 269 ifTrue: [
            recoveredBlock29Stack6 := (recoveredBlock29Stack6) createFileSourceLineNumber: (recoveredBlock29Stack7).
            recoveredBlock29PC := 271.
        ].
        recoveredBlock29Step = 271 ifTrue: [
            (recoveredBlock29Stack1) ileWarningNo: (recoveredBlock29Stack2) with: (recoveredBlock29Stack3) with: (recoveredBlock29Stack4) with: (recoveredBlock29Stack5) source: (recoveredBlock29Stack6).
            recoveredBlock29PC := 274.
        ].
        recoveredBlock29Step = 274 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 277.
        ].
        recoveredBlock29Step = 277 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 280.
        ].
        recoveredBlock29Step = 280 ifTrue: [
            (recoveredBlock29Stack1) add: (recoveredBlock29Stack2).
            recoveredBlock29PC := 282.
        ].
        recoveredBlock29Step = 282 ifTrue: [
            recoveredBlock29Stack1 := redundantTypeMap.
            recoveredBlock29PC := 284.
        ].
        recoveredBlock29Step = 284 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) keys.
            recoveredBlock29PC := 286.
        ].
        recoveredBlock29Step = 286 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local2.
            recoveredBlock29PC := 289.
        ].
        recoveredBlock29Step = 289 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) includes: (recoveredBlock29Stack2).
            recoveredBlock29PC := 291.
        ].
        recoveredBlock29Step = 291 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 294] ifFalse: [recoveredBlock29PC := 322].
        ].
        recoveredBlock29Step = 294 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 295.
        ].
        recoveredBlock29Step = 295 ifTrue: [
            recoveredBlock29Stack2 := 22.
            recoveredBlock29PC := 297.
        ].
        recoveredBlock29Step = 297 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local2.
            recoveredBlock29PC := 300.
        ].
        recoveredBlock29Step = 300 ifTrue: [
            recoveredBlock29Stack4 := recoveredArg1.
            recoveredBlock29PC := 303.
        ].
        recoveredBlock29Step = 303 ifTrue: [
            recoveredBlock29Stack4 := (recoveredBlock29Stack4) file.
            recoveredBlock29PC := 305.
        ].
        recoveredBlock29Step = 305 ifTrue: [
            recoveredBlock29Stack5 := self.
            recoveredBlock29PC := 306.
        ].
        recoveredBlock29Step = 306 ifTrue: [
            recoveredBlock29Stack6 := recoveredBlock29Arg2.
            recoveredBlock29PC := 309.
        ].
        recoveredBlock29Step = 309 ifTrue: [
            recoveredBlock29Stack7 := 2.
            recoveredBlock29PC := 311.
        ].
        recoveredBlock29Step = 311 ifTrue: [
            recoveredBlock29Stack6 := (recoveredBlock29Stack6) at: (recoveredBlock29Stack7).
            recoveredBlock29PC := 313.
        ].
        recoveredBlock29Step = 313 ifTrue: [
            recoveredBlock29Stack5 := (recoveredBlock29Stack5) createFileSourceLineNumber: (recoveredBlock29Stack6).
            recoveredBlock29PC := 315.
        ].
        recoveredBlock29Step = 315 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) ileErrorNo: (recoveredBlock29Stack2) with: (recoveredBlock29Stack3) with: (recoveredBlock29Stack4) source: (recoveredBlock29Stack5).
            recoveredBlock29PC := 318.
        ].
        recoveredBlock29Step = 318 ifTrue: [
            recoveredBlock29PC := 354.
        ].
        recoveredBlock29Step = 322 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal2.
            recoveredBlock29PC := 325.
        ].
        recoveredBlock29Step = 325 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local3.
            recoveredBlock29PC := 328.
        ].
        recoveredBlock29Step = 328 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) first.
            recoveredBlock29PC := 330.
        ].
        recoveredBlock29Step = 330 ifTrue: [
            recoveredBlock29Stack3 := '|'.
            recoveredBlock29PC := 332.
        ].
        recoveredBlock29Step = 332 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) , (recoveredBlock29Stack3).
            recoveredBlock29PC := 334.
        ].
        recoveredBlock29Step = 334 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local2.
            recoveredBlock29PC := 337.
        ].
        recoveredBlock29Step = 337 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) , (recoveredBlock29Stack3).
            recoveredBlock29PC := 339.
        ].
        recoveredBlock29Step = 339 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Arg2.
            recoveredBlock29PC := 342.
        ].
        recoveredBlock29Step = 342 ifTrue: [
            (recoveredBlock29Stack1) at: (recoveredBlock29Stack2) put: (recoveredBlock29Stack3).
            recoveredBlock29PC := 344.
        ].
        recoveredBlock29Step = 344 ifTrue: [
            recoveredBlock29Stack1 := redundantTypeMap.
            recoveredBlock29PC := 346.
        ].
        recoveredBlock29Step = 346 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local2.
            recoveredBlock29PC := 349.
        ].
        recoveredBlock29Step = 349 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Local1.
            recoveredBlock29PC := 352.
        ].
        recoveredBlock29Step = 352 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) at: (recoveredBlock29Stack2) put: (recoveredBlock29Stack3).
            recoveredBlock29PC := 354.
        ].
        recoveredBlock29Step = 354 ifTrue: [
            recoveredBlock29Stack2 := nil.
            recoveredBlock29PC := 355.
        ].
        recoveredBlock29Step = 355 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Stack2.
            recoveredBlock29PC := 356.
        ].
        recoveredBlock29Step = 356 ifTrue: [
            recoveredBlock29Local2 := recoveredBlock29Stack3.
            recoveredBlock29PC := 359.
        ].
        recoveredBlock29Step = 359 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack2.
            recoveredBlock29PC := 362.
        ].
        recoveredBlock29Step = 362 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
    (recoveredValue8) keysAndValuesDo: (recoveredValue9).
    recoveredValue10 := (self) arithServices.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) removeAllKeys: (recoveredValue11).
    recoveredValue12 := (self) arithServices.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue12) addAll: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x2061eab4; bytecode file offset 0xf1b42c"
!SGCgServiceSettings methodsFor: 'recovered'!
prepareOptionalServiceTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) usesOptionalServices.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGCgServiceTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionalServiceLabels.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block2811eaf8Arg1 | 
    | block2811eaf8Value0 block2811eaf8Value1 |
    block2811eaf8Value0 := block2811eaf8Arg1.
    block2811eaf8Value1 := (block2811eaf8Value0) asUppercase.
    block2811eaf8Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := SGCgServiceTable.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionalTwoArgumentsServiceKeys.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) arithServices.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 :recoveredBlock51Arg2 | 
    | recoveredBlock51Local1 recoveredBlock51Local2 recoveredBlock51Local3 recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51Stack5 recoveredBlock51Stack6 recoveredBlock51Stack7 recoveredBlock51Stack8 recoveredBlock51Stack9 recoveredBlock51Stack10 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack2 := $|.
            recoveredBlock51PC := 64.
        ].
        recoveredBlock51Step = 64 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) allSubStrings: (recoveredBlock51Stack2).
            recoveredBlock51PC := 66.
        ].
        recoveredBlock51Step = 66 ifTrue: [
            recoveredBlock51Local3 := recoveredBlock51Stack1.
            recoveredBlock51PC := 67.
        ].
        recoveredBlock51Step = 67 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local3.
            recoveredBlock51PC := 68.
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) first.
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) asUppercase.
            recoveredBlock51PC := 72.
        ].
        recoveredBlock51Step = 72 ifTrue: [
            recoveredBlock51Local2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 73.
        ].
        recoveredBlock51Step = 73 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 74.
        ].
        recoveredBlock51Step = 74 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal5.
            recoveredBlock51PC := 77.
        ].
        recoveredBlock51Step = 77 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local2.
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) includes: (recoveredBlock51Stack3).
            recoveredBlock51PC := 80.
        ].
        recoveredBlock51Step = 80 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 84] ifFalse: [recoveredBlock51PC := 509].
        ].
        recoveredBlock51Step = 84 ifTrue: [
            recoveredBlock51PC := 85.
        ].
        recoveredBlock51Step = 85 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local3.
            recoveredBlock51PC := 86.
        ].
        recoveredBlock51Step = 86 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) size.
            recoveredBlock51PC := 88.
        ].
        recoveredBlock51Step = 88 ifTrue: [
            recoveredBlock51Stack2 := 3.
            recoveredBlock51PC := 90.
        ].
        recoveredBlock51Step = 90 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) >= (recoveredBlock51Stack2).
            recoveredBlock51PC := 91.
        ].
        recoveredBlock51Step = 91 ifTrue: [
            recoveredLocal1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 94.
        ].
        recoveredBlock51Step = 94 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local3.
            recoveredBlock51PC := 95.
        ].
        recoveredBlock51Step = 95 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) size.
            recoveredBlock51PC := 97.
        ].
        recoveredBlock51Step = 97 ifTrue: [
            recoveredBlock51Stack2 := 3.
            recoveredBlock51PC := 99.
        ].
        recoveredBlock51Step = 99 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) = (recoveredBlock51Stack2).
            recoveredBlock51PC := 100.
        ].
        recoveredBlock51Step = 100 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 104] ifFalse: [recoveredBlock51PC := 344].
        ].
        recoveredBlock51Step = 104 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal4.
            recoveredBlock51PC := 107.
        ].
        recoveredBlock51Step = 107 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local2.
            recoveredBlock51PC := 108.
        ].
        recoveredBlock51Step = 108 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) includes: (recoveredBlock51Stack2).
            recoveredBlock51PC := 110.
        ].
        recoveredBlock51Step = 110 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 111.
        ].
        recoveredBlock51Step = 111 ifTrue: [
            recoveredLocal1 := recoveredBlock51Stack2.
            recoveredBlock51PC := 114.
        ].
        recoveredBlock51Step = 114 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 118] ifFalse: [recoveredBlock51PC := 340].
        ].
        recoveredBlock51Step = 118 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 119.
        ].
        recoveredBlock51Step = 119 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 121.
        ].
        recoveredBlock51Step = 121 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) definesFloatService: (recoveredBlock51Stack2).
            recoveredBlock51PC := 123.
        ].
        recoveredBlock51Step = 123 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 126] ifFalse: [recoveredBlock51PC := 166].
        ].
        recoveredBlock51Step = 126 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 127.
        ].
        recoveredBlock51Step = 127 ifTrue: [
            recoveredBlock51Stack2 := 23.
            recoveredBlock51PC := 129.
        ].
        recoveredBlock51Step = 129 ifTrue: [
            recoveredBlock51Stack3 := 'Float'.
            recoveredBlock51PC := 131.
        ].
        recoveredBlock51Step = 131 ifTrue: [
            recoveredBlock51Stack4 := 'mixed signed '.
            recoveredBlock51PC := 133.
        ].
        recoveredBlock51Step = 133 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Local3.
            recoveredBlock51PC := 134.
        ].
        recoveredBlock51Step = 134 ifTrue: [
            recoveredBlock51Stack6 := 1.
            recoveredBlock51PC := 136.
        ].
        recoveredBlock51Step = 136 ifTrue: [
            recoveredBlock51Stack5 := (recoveredBlock51Stack5) at: (recoveredBlock51Stack6).
            recoveredBlock51PC := 138.
        ].
        recoveredBlock51Step = 138 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) , (recoveredBlock51Stack5).
            recoveredBlock51PC := 140.
        ].
        recoveredBlock51Step = 140 ifTrue: [
            recoveredBlock51Stack5 := ' service'.
            recoveredBlock51PC := 142.
        ].
        recoveredBlock51Step = 142 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) , (recoveredBlock51Stack5).
            recoveredBlock51PC := 144.
        ].
        recoveredBlock51Step = 144 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Arg1.
            recoveredBlock51PC := 146.
        ].
        recoveredBlock51Step = 146 ifTrue: [
            recoveredBlock51Stack6 := recoveredArg1.
            recoveredBlock51PC := 149.
        ].
        recoveredBlock51Step = 149 ifTrue: [
            recoveredBlock51Stack6 := (recoveredBlock51Stack6) file.
            recoveredBlock51PC := 151.
        ].
        recoveredBlock51Step = 151 ifTrue: [
            recoveredBlock51Stack7 := self.
            recoveredBlock51PC := 152.
        ].
        recoveredBlock51Step = 152 ifTrue: [
            recoveredBlock51Stack8 := recoveredBlock51Arg2.
            recoveredBlock51PC := 153.
        ].
        recoveredBlock51Step = 153 ifTrue: [
            recoveredBlock51Stack9 := 2.
            recoveredBlock51PC := 155.
        ].
        recoveredBlock51Step = 155 ifTrue: [
            recoveredBlock51Stack8 := (recoveredBlock51Stack8) at: (recoveredBlock51Stack9).
            recoveredBlock51PC := 157.
        ].
        recoveredBlock51Step = 157 ifTrue: [
            recoveredBlock51Stack7 := (recoveredBlock51Stack7) createFileSourceLineNumber: (recoveredBlock51Stack8).
            recoveredBlock51PC := 159.
        ].
        recoveredBlock51Step = 159 ifTrue: [
            (recoveredBlock51Stack1) ileErrorNo: (recoveredBlock51Stack2) with: (recoveredBlock51Stack3) with: (recoveredBlock51Stack4) with: (recoveredBlock51Stack5) with: (recoveredBlock51Stack6) source: (recoveredBlock51Stack7).
            recoveredBlock51PC := 162.
        ].
        recoveredBlock51Step = 162 ifTrue: [
            recoveredBlock51PC := 340.
        ].
        recoveredBlock51Step = 166 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal2.
            recoveredBlock51PC := 169.
        ].
        recoveredBlock51Step = 169 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 171.
        ].
        recoveredBlock51Step = 171 ifTrue: [
            (recoveredBlock51Stack1) add: (recoveredBlock51Stack2).
            recoveredBlock51PC := 173.
        ].
        recoveredBlock51Step = 173 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 174.
        ].
        recoveredBlock51Step = 174 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local3.
            recoveredBlock51PC := 175.
        ].
        recoveredBlock51Step = 175 ifTrue: [
            recoveredBlock51Stack3 := 2.
            recoveredBlock51PC := 177.
        ].
        recoveredBlock51Step = 177 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) at: (recoveredBlock51Stack3).
            recoveredBlock51PC := 179.
        ].
        recoveredBlock51Step = 179 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) isValidUIntType: (recoveredBlock51Stack2).
            recoveredBlock51PC := 181.
        ].
        recoveredBlock51Step = 181 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 220] ifFalse: [recoveredBlock51PC := 184].
        ].
        recoveredBlock51Step = 184 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 185.
        ].
        recoveredBlock51Step = 185 ifTrue: [
            recoveredBlock51Stack2 := 26.
            recoveredBlock51PC := 187.
        ].
        recoveredBlock51Step = 187 ifTrue: [
            recoveredBlock51Stack3 := 'unsigned'.
            recoveredBlock51PC := 189.
        ].
        recoveredBlock51Step = 189 ifTrue: [
            recoveredBlock51Stack4 := 'mixed signed '.
            recoveredBlock51PC := 191.
        ].
        recoveredBlock51Step = 191 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Local3.
            recoveredBlock51PC := 192.
        ].
        recoveredBlock51Step = 192 ifTrue: [
            recoveredBlock51Stack6 := 1.
            recoveredBlock51PC := 194.
        ].
        recoveredBlock51Step = 194 ifTrue: [
            recoveredBlock51Stack5 := (recoveredBlock51Stack5) at: (recoveredBlock51Stack6).
            recoveredBlock51PC := 196.
        ].
        recoveredBlock51Step = 196 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) , (recoveredBlock51Stack5).
            recoveredBlock51PC := 198.
        ].
        recoveredBlock51Step = 198 ifTrue: [
            recoveredBlock51Stack5 := ' service first argument'.
            recoveredBlock51PC := 200.
        ].
        recoveredBlock51Step = 200 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) , (recoveredBlock51Stack5).
            recoveredBlock51PC := 202.
        ].
        recoveredBlock51Step = 202 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Arg1.
            recoveredBlock51PC := 204.
        ].
        recoveredBlock51Step = 204 ifTrue: [
            recoveredBlock51Stack6 := recoveredArg1.
            recoveredBlock51PC := 207.
        ].
        recoveredBlock51Step = 207 ifTrue: [
            recoveredBlock51Stack6 := (recoveredBlock51Stack6) file.
            recoveredBlock51PC := 209.
        ].
        recoveredBlock51Step = 209 ifTrue: [
            recoveredBlock51Stack7 := self.
            recoveredBlock51PC := 210.
        ].
        recoveredBlock51Step = 210 ifTrue: [
            recoveredBlock51Stack8 := recoveredBlock51Arg2.
            recoveredBlock51PC := 211.
        ].
        recoveredBlock51Step = 211 ifTrue: [
            recoveredBlock51Stack9 := 2.
            recoveredBlock51PC := 213.
        ].
        recoveredBlock51Step = 213 ifTrue: [
            recoveredBlock51Stack8 := (recoveredBlock51Stack8) at: (recoveredBlock51Stack9).
            recoveredBlock51PC := 215.
        ].
        recoveredBlock51Step = 215 ifTrue: [
            recoveredBlock51Stack7 := (recoveredBlock51Stack7) createFileSourceLineNumber: (recoveredBlock51Stack8).
            recoveredBlock51PC := 217.
        ].
        recoveredBlock51Step = 217 ifTrue: [
            (recoveredBlock51Stack1) ileErrorNo: (recoveredBlock51Stack2) with: (recoveredBlock51Stack3) with: (recoveredBlock51Stack4) with: (recoveredBlock51Stack5) with: (recoveredBlock51Stack6) source: (recoveredBlock51Stack7).
            recoveredBlock51PC := 220.
        ].
        recoveredBlock51Step = 220 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 221.
        ].
        recoveredBlock51Step = 221 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local3.
            recoveredBlock51PC := 222.
        ].
        recoveredBlock51Step = 222 ifTrue: [
            recoveredBlock51Stack3 := 3.
            recoveredBlock51PC := 224.
        ].
        recoveredBlock51Step = 224 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) at: (recoveredBlock51Stack3).
            recoveredBlock51PC := 226.
        ].
        recoveredBlock51Step = 226 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) isValidSIntType: (recoveredBlock51Stack2).
            recoveredBlock51PC := 228.
        ].
        recoveredBlock51Step = 228 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 268] ifFalse: [recoveredBlock51PC := 232].
        ].
        recoveredBlock51Step = 232 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 233.
        ].
        recoveredBlock51Step = 233 ifTrue: [
            recoveredBlock51Stack2 := 26.
            recoveredBlock51PC := 235.
        ].
        recoveredBlock51Step = 235 ifTrue: [
            recoveredBlock51Stack3 := 'signed'.
            recoveredBlock51PC := 237.
        ].
        recoveredBlock51Step = 237 ifTrue: [
            recoveredBlock51Stack4 := 'mixed signed '.
            recoveredBlock51PC := 239.
        ].
        recoveredBlock51Step = 239 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Local3.
            recoveredBlock51PC := 240.
        ].
        recoveredBlock51Step = 240 ifTrue: [
            recoveredBlock51Stack6 := 1.
            recoveredBlock51PC := 242.
        ].
        recoveredBlock51Step = 242 ifTrue: [
            recoveredBlock51Stack5 := (recoveredBlock51Stack5) at: (recoveredBlock51Stack6).
            recoveredBlock51PC := 244.
        ].
        recoveredBlock51Step = 244 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) , (recoveredBlock51Stack5).
            recoveredBlock51PC := 246.
        ].
        recoveredBlock51Step = 246 ifTrue: [
            recoveredBlock51Stack5 := ' service second argument'.
            recoveredBlock51PC := 248.
        ].
        recoveredBlock51Step = 248 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) , (recoveredBlock51Stack5).
            recoveredBlock51PC := 250.
        ].
        recoveredBlock51Step = 250 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Arg1.
            recoveredBlock51PC := 252.
        ].
        recoveredBlock51Step = 252 ifTrue: [
            recoveredBlock51Stack6 := recoveredArg1.
            recoveredBlock51PC := 255.
        ].
        recoveredBlock51Step = 255 ifTrue: [
            recoveredBlock51Stack6 := (recoveredBlock51Stack6) file.
            recoveredBlock51PC := 257.
        ].
        recoveredBlock51Step = 257 ifTrue: [
            recoveredBlock51Stack7 := self.
            recoveredBlock51PC := 258.
        ].
        recoveredBlock51Step = 258 ifTrue: [
            recoveredBlock51Stack8 := recoveredBlock51Arg2.
            recoveredBlock51PC := 259.
        ].
        recoveredBlock51Step = 259 ifTrue: [
            recoveredBlock51Stack9 := 2.
            recoveredBlock51PC := 261.
        ].
        recoveredBlock51Step = 261 ifTrue: [
            recoveredBlock51Stack8 := (recoveredBlock51Stack8) at: (recoveredBlock51Stack9).
            recoveredBlock51PC := 263.
        ].
        recoveredBlock51Step = 263 ifTrue: [
            recoveredBlock51Stack7 := (recoveredBlock51Stack7) createFileSourceLineNumber: (recoveredBlock51Stack8).
            recoveredBlock51PC := 265.
        ].
        recoveredBlock51Step = 265 ifTrue: [
            (recoveredBlock51Stack1) ileErrorNo: (recoveredBlock51Stack2) with: (recoveredBlock51Stack3) with: (recoveredBlock51Stack4) with: (recoveredBlock51Stack5) with: (recoveredBlock51Stack6) source: (recoveredBlock51Stack7).
            recoveredBlock51PC := 268.
        ].
        recoveredBlock51Step = 268 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 269.
        ].
        recoveredBlock51Step = 269 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local3.
            recoveredBlock51PC := 270.
        ].
        recoveredBlock51Step = 270 ifTrue: [
            recoveredBlock51Stack3 := 2.
            recoveredBlock51PC := 272.
        ].
        recoveredBlock51Step = 272 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) at: (recoveredBlock51Stack3).
            recoveredBlock51PC := 274.
        ].
        recoveredBlock51Step = 274 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local3.
            recoveredBlock51PC := 275.
        ].
        recoveredBlock51Step = 275 ifTrue: [
            recoveredBlock51Stack4 := 3.
            recoveredBlock51PC := 277.
        ].
        recoveredBlock51Step = 277 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) at: (recoveredBlock51Stack4).
            recoveredBlock51PC := 279.
        ].
        recoveredBlock51Step = 279 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) hasSameBitWidth: (recoveredBlock51Stack2) as: (recoveredBlock51Stack3).
            recoveredBlock51PC := 281.
        ].
        recoveredBlock51Step = 281 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 309] ifFalse: [recoveredBlock51PC := 284].
        ].
        recoveredBlock51Step = 284 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 285.
        ].
        recoveredBlock51Step = 285 ifTrue: [
            recoveredBlock51Stack2 := 26.
            recoveredBlock51PC := 287.
        ].
        recoveredBlock51Step = 287 ifTrue: [
            recoveredBlock51Stack3 := 'same bit width'.
            recoveredBlock51PC := 289.
        ].
        recoveredBlock51Step = 289 ifTrue: [
            recoveredBlock51Stack4 := 'mixed signed'.
            recoveredBlock51PC := 291.
        ].
        recoveredBlock51Step = 291 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Arg1.
            recoveredBlock51PC := 293.
        ].
        recoveredBlock51Step = 293 ifTrue: [
            recoveredBlock51Stack6 := recoveredArg1.
            recoveredBlock51PC := 296.
        ].
        recoveredBlock51Step = 296 ifTrue: [
            recoveredBlock51Stack6 := (recoveredBlock51Stack6) file.
            recoveredBlock51PC := 298.
        ].
        recoveredBlock51Step = 298 ifTrue: [
            recoveredBlock51Stack7 := self.
            recoveredBlock51PC := 299.
        ].
        recoveredBlock51Step = 299 ifTrue: [
            recoveredBlock51Stack8 := recoveredBlock51Arg2.
            recoveredBlock51PC := 300.
        ].
        recoveredBlock51Step = 300 ifTrue: [
            recoveredBlock51Stack9 := 2.
            recoveredBlock51PC := 302.
        ].
        recoveredBlock51Step = 302 ifTrue: [
            recoveredBlock51Stack8 := (recoveredBlock51Stack8) at: (recoveredBlock51Stack9).
            recoveredBlock51PC := 304.
        ].
        recoveredBlock51Step = 304 ifTrue: [
            recoveredBlock51Stack7 := (recoveredBlock51Stack7) createFileSourceLineNumber: (recoveredBlock51Stack8).
            recoveredBlock51PC := 306.
        ].
        recoveredBlock51Step = 306 ifTrue: [
            (recoveredBlock51Stack1) ileErrorNo: (recoveredBlock51Stack2) with: (recoveredBlock51Stack3) with: (recoveredBlock51Stack4) with: (recoveredBlock51Stack5) with: (recoveredBlock51Stack6) source: (recoveredBlock51Stack7).
            recoveredBlock51PC := 309.
        ].
        recoveredBlock51Step = 309 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal3.
            recoveredBlock51PC := 312.
        ].
        recoveredBlock51Step = 312 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local3.
            recoveredBlock51PC := 313.
        ].
        recoveredBlock51Step = 313 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) first.
            recoveredBlock51PC := 315.
        ].
        recoveredBlock51Step = 315 ifTrue: [
            recoveredBlock51Stack3 := 'MixedSigned|'.
            recoveredBlock51PC := 317.
        ].
        recoveredBlock51Step = 317 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) , (recoveredBlock51Stack3).
            recoveredBlock51PC := 319.
        ].
        recoveredBlock51Step = 319 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local3.
            recoveredBlock51PC := 320.
        ].
        recoveredBlock51Step = 320 ifTrue: [
            recoveredBlock51Stack4 := 2.
            recoveredBlock51PC := 322.
        ].
        recoveredBlock51Step = 322 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) at: (recoveredBlock51Stack4).
            recoveredBlock51PC := 324.
        ].
        recoveredBlock51Step = 324 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) , (recoveredBlock51Stack3).
            recoveredBlock51PC := 326.
        ].
        recoveredBlock51Step = 326 ifTrue: [
            recoveredBlock51Stack3 := '|'.
            recoveredBlock51PC := 328.
        ].
        recoveredBlock51Step = 328 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) , (recoveredBlock51Stack3).
            recoveredBlock51PC := 330.
        ].
        recoveredBlock51Step = 330 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local3.
            recoveredBlock51PC := 331.
        ].
        recoveredBlock51Step = 331 ifTrue: [
            recoveredBlock51Stack4 := 3.
            recoveredBlock51PC := 333.
        ].
        recoveredBlock51Step = 333 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) at: (recoveredBlock51Stack4).
            recoveredBlock51PC := 335.
        ].
        recoveredBlock51Step = 335 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) , (recoveredBlock51Stack3).
            recoveredBlock51PC := 337.
        ].
        recoveredBlock51Step = 337 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg2.
            recoveredBlock51PC := 338.
        ].
        recoveredBlock51Step = 338 ifTrue: [
            (recoveredBlock51Stack1) at: (recoveredBlock51Stack2) put: (recoveredBlock51Stack3).
            recoveredBlock51PC := 340.
        ].
        recoveredBlock51Step = 340 ifTrue: [
            recoveredBlock51PC := 468.
        ].
        recoveredBlock51Step = 344 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local3.
            recoveredBlock51PC := 345.
        ].
        recoveredBlock51Step = 345 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) size.
            recoveredBlock51PC := 347.
        ].
        recoveredBlock51Step = 347 ifTrue: [
            recoveredBlock51Stack2 := 2.
            recoveredBlock51PC := 349.
        ].
        recoveredBlock51Step = 349 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) = (recoveredBlock51Stack2).
            recoveredBlock51PC := 350.
        ].
        recoveredBlock51Step = 350 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 354] ifFalse: [recoveredBlock51PC := 468].
        ].
        recoveredBlock51Step = 354 ifTrue: [
            recoveredBlock51Stack1 := true.
            recoveredBlock51PC := 355.
        ].
        recoveredBlock51Step = 355 ifTrue: [
            recoveredLocal1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 358.
        ].
        recoveredBlock51Step = 358 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local3.
            recoveredBlock51PC := 359.
        ].
        recoveredBlock51Step = 359 ifTrue: [
            recoveredBlock51Stack2 := 2.
            recoveredBlock51PC := 361.
        ].
        recoveredBlock51Step = 361 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) at: (recoveredBlock51Stack2).
            recoveredBlock51PC := 363.
        ].
        recoveredBlock51Step = 363 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 364.
        ].
        recoveredBlock51Step = 364 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local2.
            recoveredBlock51PC := 365.
        ].
        recoveredBlock51Step = 365 ifTrue: [
            recoveredBlock51Stack2 := SGCgServiceTable.
            recoveredBlock51PC := 367.
        ].
        recoveredBlock51Step = 367 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) limitSpecialServiceLabel.
            recoveredBlock51PC := 369.
        ].
        recoveredBlock51Step = 369 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) asUppercase.
            recoveredBlock51PC := 371.
        ].
        recoveredBlock51Step = 371 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) equals: (recoveredBlock51Stack2).
            recoveredBlock51PC := 373.
        ].
        recoveredBlock51Step = 373 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 376] ifFalse: [recoveredBlock51PC := 412].
        ].
        recoveredBlock51Step = 376 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 377.
        ].
        recoveredBlock51Step = 377 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local1.
            recoveredBlock51PC := 378.
        ].
        recoveredBlock51Step = 378 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) definesIntType: (recoveredBlock51Stack2).
            recoveredBlock51PC := 380.
        ].
        recoveredBlock51Step = 380 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 384] ifFalse: [recoveredBlock51PC := 409].
        ].
        recoveredBlock51Step = 384 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 385.
        ].
        recoveredBlock51Step = 385 ifTrue: [
            recoveredBlock51Stack2 := 23.
            recoveredBlock51PC := 387.
        ].
        recoveredBlock51Step = 387 ifTrue: [
            recoveredBlock51Stack3 := 'Integer'.
            recoveredBlock51PC := 389.
        ].
        recoveredBlock51Step = 389 ifTrue: [
            recoveredBlock51Stack4 := 'special limit service'.
            recoveredBlock51PC := 391.
        ].
        recoveredBlock51Step = 391 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Arg1.
            recoveredBlock51PC := 393.
        ].
        recoveredBlock51Step = 393 ifTrue: [
            recoveredBlock51Stack6 := recoveredArg1.
            recoveredBlock51PC := 396.
        ].
        recoveredBlock51Step = 396 ifTrue: [
            recoveredBlock51Stack6 := (recoveredBlock51Stack6) file.
            recoveredBlock51PC := 398.
        ].
        recoveredBlock51Step = 398 ifTrue: [
            recoveredBlock51Stack7 := self.
            recoveredBlock51PC := 399.
        ].
        recoveredBlock51Step = 399 ifTrue: [
            recoveredBlock51Stack8 := recoveredBlock51Arg2.
            recoveredBlock51PC := 400.
        ].
        recoveredBlock51Step = 400 ifTrue: [
            recoveredBlock51Stack9 := 2.
            recoveredBlock51PC := 402.
        ].
        recoveredBlock51Step = 402 ifTrue: [
            recoveredBlock51Stack8 := (recoveredBlock51Stack8) at: (recoveredBlock51Stack9).
            recoveredBlock51PC := 404.
        ].
        recoveredBlock51Step = 404 ifTrue: [
            recoveredBlock51Stack7 := (recoveredBlock51Stack7) createFileSourceLineNumber: (recoveredBlock51Stack8).
            recoveredBlock51PC := 406.
        ].
        recoveredBlock51Step = 406 ifTrue: [
            (recoveredBlock51Stack1) ileErrorNo: (recoveredBlock51Stack2) with: (recoveredBlock51Stack3) with: (recoveredBlock51Stack4) with: (recoveredBlock51Stack5) with: (recoveredBlock51Stack6) source: (recoveredBlock51Stack7).
            recoveredBlock51PC := 409.
        ].
        recoveredBlock51Step = 409 ifTrue: [
            recoveredBlock51PC := 466.
        ].
        recoveredBlock51Step = 412 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal2.
            recoveredBlock51PC := 415.
        ].
        recoveredBlock51Step = 415 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 417.
        ].
        recoveredBlock51Step = 417 ifTrue: [
            (recoveredBlock51Stack1) add: (recoveredBlock51Stack2).
            recoveredBlock51PC := 419.
        ].
        recoveredBlock51Step = 419 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 420.
        ].
        recoveredBlock51Step = 420 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local1.
            recoveredBlock51PC := 421.
        ].
        recoveredBlock51Step = 421 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) isValidFloatType: (recoveredBlock51Stack2).
            recoveredBlock51PC := 423.
        ].
        recoveredBlock51Step = 423 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 426] ifFalse: [recoveredBlock51PC := 442].
        ].
        recoveredBlock51Step = 426 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal3.
            recoveredBlock51PC := 429.
        ].
        recoveredBlock51Step = 429 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local3.
            recoveredBlock51PC := 430.
        ].
        recoveredBlock51Step = 430 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) first.
            recoveredBlock51PC := 432.
        ].
        recoveredBlock51Step = 432 ifTrue: [
            recoveredBlock51Stack3 := 'F|'.
            recoveredBlock51PC := 434.
        ].
        recoveredBlock51Step = 434 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) , (recoveredBlock51Stack3).
            recoveredBlock51PC := 436.
        ].
        recoveredBlock51Step = 436 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local1.
            recoveredBlock51PC := 437.
        ].
        recoveredBlock51Step = 437 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) , (recoveredBlock51Stack3).
            recoveredBlock51PC := 439.
        ].
        recoveredBlock51Step = 439 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg2.
            recoveredBlock51PC := 440.
        ].
        recoveredBlock51Step = 440 ifTrue: [
            (recoveredBlock51Stack1) at: (recoveredBlock51Stack2) put: (recoveredBlock51Stack3).
            recoveredBlock51PC := 442.
        ].
        recoveredBlock51Step = 442 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 443.
        ].
        recoveredBlock51Step = 443 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local1.
            recoveredBlock51PC := 444.
        ].
        recoveredBlock51Step = 444 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) isValidIntType: (recoveredBlock51Stack2).
            recoveredBlock51PC := 446.
        ].
        recoveredBlock51Step = 446 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 450] ifFalse: [recoveredBlock51PC := 466].
        ].
        recoveredBlock51Step = 450 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal3.
            recoveredBlock51PC := 453.
        ].
        recoveredBlock51Step = 453 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local3.
            recoveredBlock51PC := 454.
        ].
        recoveredBlock51Step = 454 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) first.
            recoveredBlock51PC := 456.
        ].
        recoveredBlock51Step = 456 ifTrue: [
            recoveredBlock51Stack3 := '|'.
            recoveredBlock51PC := 458.
        ].
        recoveredBlock51Step = 458 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) , (recoveredBlock51Stack3).
            recoveredBlock51PC := 460.
        ].
        recoveredBlock51Step = 460 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local1.
            recoveredBlock51PC := 461.
        ].
        recoveredBlock51Step = 461 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) , (recoveredBlock51Stack3).
            recoveredBlock51PC := 463.
        ].
        recoveredBlock51Step = 463 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg2.
            recoveredBlock51PC := 464.
        ].
        recoveredBlock51Step = 464 ifTrue: [
            (recoveredBlock51Stack1) at: (recoveredBlock51Stack2) put: (recoveredBlock51Stack3).
            recoveredBlock51PC := 466.
        ].
        recoveredBlock51Step = 466 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 467.
        ].
        recoveredBlock51Step = 467 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 468.
        ].
        recoveredBlock51Step = 468 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 469.
        ].
        recoveredBlock51Step = 469 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal1.
            recoveredBlock51PC := 472.
        ].
        recoveredBlock51Step = 472 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 509] ifFalse: [recoveredBlock51PC := 476].
        ].
        recoveredBlock51Step = 476 ifTrue: [
            recoveredBlock51PC := 477.
        ].
        recoveredBlock51Step = 477 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 478.
        ].
        recoveredBlock51Step = 478 ifTrue: [
            recoveredBlock51Stack2 := 27.
            recoveredBlock51PC := 480.
        ].
        recoveredBlock51Step = 480 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local3.
            recoveredBlock51PC := 481.
        ].
        recoveredBlock51Step = 481 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) size.
            recoveredBlock51PC := 483.
        ].
        recoveredBlock51Step = 483 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) + (-1).
            recoveredBlock51PC := 484.
        ].
        recoveredBlock51Step = 484 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) asString.
            recoveredBlock51PC := 486.
        ].
        recoveredBlock51Step = 486 ifTrue: [
            recoveredBlock51Stack4 := recoveredBlock51Local3.
            recoveredBlock51PC := 487.
        ].
        recoveredBlock51Step = 487 ifTrue: [
            recoveredBlock51Stack5 := 1.
            recoveredBlock51PC := 489.
        ].
        recoveredBlock51Step = 489 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) at: (recoveredBlock51Stack5).
            recoveredBlock51PC := 491.
        ].
        recoveredBlock51Step = 491 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Arg1.
            recoveredBlock51PC := 493.
        ].
        recoveredBlock51Step = 493 ifTrue: [
            recoveredBlock51Stack6 := recoveredArg1.
            recoveredBlock51PC := 496.
        ].
        recoveredBlock51Step = 496 ifTrue: [
            recoveredBlock51Stack6 := (recoveredBlock51Stack6) file.
            recoveredBlock51PC := 498.
        ].
        recoveredBlock51Step = 498 ifTrue: [
            recoveredBlock51Stack7 := self.
            recoveredBlock51PC := 499.
        ].
        recoveredBlock51Step = 499 ifTrue: [
            recoveredBlock51Stack8 := recoveredBlock51Arg2.
            recoveredBlock51PC := 500.
        ].
        recoveredBlock51Step = 500 ifTrue: [
            recoveredBlock51Stack9 := 2.
            recoveredBlock51PC := 502.
        ].
        recoveredBlock51Step = 502 ifTrue: [
            recoveredBlock51Stack8 := (recoveredBlock51Stack8) at: (recoveredBlock51Stack9).
            recoveredBlock51PC := 504.
        ].
        recoveredBlock51Step = 504 ifTrue: [
            recoveredBlock51Stack7 := (recoveredBlock51Stack7) createFileSourceLineNumber: (recoveredBlock51Stack8).
            recoveredBlock51PC := 506.
        ].
        recoveredBlock51Step = 506 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) ileErrorNo: (recoveredBlock51Stack2) with: (recoveredBlock51Stack3) with: (recoveredBlock51Stack4) with: (recoveredBlock51Stack5) with: (recoveredBlock51Stack6) source: (recoveredBlock51Stack7).
            recoveredBlock51PC := 509.
        ].
        recoveredBlock51Step = 509 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := (recoveredStack0) arithServices.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack0) removeAllKeys: (recoveredStack1).
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack0 := (recoveredStack0) arithServices.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

