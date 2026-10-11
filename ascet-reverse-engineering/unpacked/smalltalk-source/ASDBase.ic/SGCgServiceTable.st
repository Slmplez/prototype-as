"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200078f8; bytecode file offset 0x908be4"
!SGCgServiceTable methodsFor: 'recovered'!
currentServiceKey
    | recoveredValue0 |
    recoveredValue0 := (self) currentEntryKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a2f8; bytecode file offset 0x908be4"
!SGCgServiceTable methodsFor: 'recovered'!
serviceKeyKey
    | recoveredValue0 |
    recoveredValue0 := (self) currentEntryKeyKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ac10; bytecode file offset 0x908be4"
!SGCgServiceTable methodsFor: 'recovered'!
source
    | recoveredValue0 |
    recoveredValue0 := (self) errorSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002fad4; bytecode file offset 0x934580"
!SGCgServiceTable methodsFor: 'recovered'!
fileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileSource.
    recoveredValue1 := (recoveredValue0) file.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033504; bytecode file offset 0x934580"
!SGCgServiceTable methodsFor: 'recovered'!
currentIleExpander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) expander.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039674; bytecode file offset 0x938608"
!SGCgServiceTable methodsFor: 'recovered'!
getServiceEntries: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getEntryWithKey: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f638; bytecode file offset 0x93bf94"
!SGCgServiceTable methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200674a4; bytecode file offset 0x9646f8"
!SGCgServiceTable methodsFor: 'recovered'!
table
    | recoveredValue0 |
    recoveredValue0 := services.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069f70; bytecode file offset 0x966bdc"
!SGCgServiceTable methodsFor: 'recovered'!
errorSource
    | recoveredValue0 |
    recoveredValue0 := errorSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a9d4; bytecode file offset 0x967a18"
!SGCgServiceTable methodsFor: 'recovered'!
fileSource
    | recoveredValue0 |
    recoveredValue0 := fileSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b968; bytecode file offset 0x96873c"
!SGCgServiceTable methodsFor: 'recovered'!
next
    | recoveredValue0 |
    recoveredValue0 := next.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c19c; bytecode file offset 0x9692b0"
!SGCgServiceTable methodsFor: 'recovered'!
doublePrecision
    | recoveredValue0 |
    recoveredValue0 := doublePrecision.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20080e5c; bytecode file offset 0x97d718"
!SGCgServiceTable methodsFor: 'recovered'!
separator
    ^$|
! !

"ASDBase.ic method 0x20096838; bytecode file offset 0x9930f4"
!SGCgServiceTable methodsFor: 'recovered'!
lineNumberForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getEntryWithKey: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) at: (2).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009ede4; bytecode file offset 0x99b6b8"
!SGCgServiceTable methodsFor: 'recovered'!
currentService
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentServiceKey.
    recoveredValue1 := (self) currentArguments.
    recoveredValue2 := (self) bindTemplateWithKey: (recoveredValue0) to: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ac028; bytecode file offset 0x9a894c"
!SGCgServiceTable methodsFor: 'recovered'!
createFileSourceLineNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fileSource.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) lineNumber: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bcb94; bytecode file offset 0x9b94b8"
!SGCgServiceTable methodsFor: 'recovered'!
currentServiceKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentArguments.
    recoveredValue1 := (self) serviceKeyKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bd47c; bytecode file offset 0x9b9d70"
!SGCgServiceTable methodsFor: 'recovered'!
optionalServiceKeyEntries: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) table.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bf338; bytecode file offset 0x9bc0b4"
!SGCgServiceTable methodsFor: 'recovered'!
table: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    services := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2ba0; bytecode file offset 0x9bf474"
!SGCgServiceTable methodsFor: 'recovered'!
next: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    next := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2c84; bytecode file offset 0x9bfde0"
!SGCgServiceTable methodsFor: 'recovered'!
doublePrecision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    doublePrecision := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010fa04; bytecode file offset 0xa0c2c4"
!SGCgServiceTable methodsFor: 'recovered'!
sourceForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
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
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineNumberForKey: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFileSourceLineNumber: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126d58; bytecode file offset 0xa23624"
!SGCgServiceTable methodsFor: 'recovered'!
getTemplateWithKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEntryWithKey: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201437a8; bytecode file offset 0xa40064"
!SGCgServiceTable methodsFor: 'recovered'!
errorCode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            errorCode := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) errorCode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201437cc; bytecode file offset 0xa40088"
!SGCgServiceTable methodsFor: 'recovered'!
errorSource: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            errorSource := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) errorSource: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a60a8; bytecode file offset 0xaa2968"
!SGCgServiceTable methodsFor: 'recovered'!
readFromDict: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg2.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) allSubStrings: ($|).
    recoveredBlock5Value3 := (self) addTemplate: (recoveredBlock5Value0) key: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201bf5dc; bytecode file offset 0xabbe98"
!SGCgServiceTable methodsFor: 'recovered'!
getDeepExactEntryWithKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExactEntryWithKey: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cd15c; bytecode file offset 0xac9a20"
!SGCgServiceTable methodsFor: 'recovered'!
deepSourceForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEntryWithKey: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceForKey: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepSourceForKey: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d0b54; bytecode file offset 0xacd414"
!SGCgServiceTable methodsFor: 'recovered'!
currentServiceExists
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentServiceKey.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTemplateWithKey: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20278ca0; bytecode file offset 0xb75564"
!SGCgServiceTable methodsFor: 'recovered'!
optionalServiceExists: recoveredArg1 issueErrorOnMissingFor: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getEntryWithKey: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    ^recoveredBlock8Value0
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredArg3.
    (self) errorSource: (recoveredBlock21Value0).
    recoveredBlock21Value1 := recoveredBlock21Arg1.
    recoveredBlock21Value2 := (self) missingTemplate: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^nil
! !

"ASDBase.ic method 0x2038b52c; bytecode file offset 0xc87e00"
!SGCgServiceTable methodsFor: 'recovered'!
fileSource: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Infinity.
    recoveredValue1 := (recoveredValue0) plus.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) table.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := [:recoveredBlock11Block19Arg1 | 
    | recoveredBlock11Block19Local1 recoveredBlock11Block19Stack0 recoveredBlock11Block19Stack1 recoveredBlock11Block19Stack2 recoveredBlock11Block19Stack3 recoveredBlock11Block19PC recoveredBlock11Block19Step recoveredBlock11Block19Done recoveredBlock11Block19Result |
    recoveredBlock11Block19Stack0 := nil.
    recoveredBlock11Block19PC := 26.
    recoveredBlock11Block19Done := false.
    [recoveredBlock11Block19Done not] whileTrue: [
        recoveredBlock11Block19Step := recoveredBlock11Block19PC.
        recoveredBlock11Block19Step = 26 ifTrue: [
            recoveredBlock11Block19Stack1 := recoveredBlock11Block19Arg1.
            recoveredBlock11Block19PC := 27.
        ].
        recoveredBlock11Block19Step = 27 ifTrue: [
            recoveredBlock11Block19Stack1 := (recoveredBlock11Block19Stack1) value.
            recoveredBlock11Block19PC := 28.
        ].
        recoveredBlock11Block19Step = 28 ifTrue: [
            recoveredBlock11Block19Stack2 := 2.
            recoveredBlock11Block19PC := 30.
        ].
        recoveredBlock11Block19Step = 30 ifTrue: [
            recoveredBlock11Block19Stack1 := (recoveredBlock11Block19Stack1) at: (recoveredBlock11Block19Stack2).
            recoveredBlock11Block19PC := 32.
        ].
        recoveredBlock11Block19Step = 32 ifTrue: [
            recoveredBlock11Block19Local1 := recoveredBlock11Block19Stack1.
            recoveredBlock11Block19PC := 33.
        ].
        recoveredBlock11Block19Step = 33 ifTrue: [
            recoveredBlock11Block19Stack1 := nil.
            recoveredBlock11Block19PC := 34.
        ].
        recoveredBlock11Block19Step = 34 ifTrue: [
            recoveredBlock11Block19Stack2 := recoveredBlock11Block19Local1.
            recoveredBlock11Block19PC := 35.
        ].
        recoveredBlock11Block19Step = 35 ifTrue: [
            (recoveredBlock11Block19Stack2 == nil) ifTrue: [recoveredBlock11Block19PC := 49] ifFalse: [recoveredBlock11Block19PC := 38].
        ].
        recoveredBlock11Block19Step = 38 ifTrue: [
            recoveredBlock11Block19PC := 39.
        ].
        recoveredBlock11Block19Step = 39 ifTrue: [
            recoveredBlock11Block19Stack1 := recoveredLocal1.
            recoveredBlock11Block19PC := 42.
        ].
        recoveredBlock11Block19Step = 42 ifTrue: [
            recoveredBlock11Block19Stack2 := recoveredBlock11Block19Local1.
            recoveredBlock11Block19PC := 43.
        ].
        recoveredBlock11Block19Step = 43 ifTrue: [
            recoveredBlock11Block19Stack1 := (recoveredBlock11Block19Stack1) min: (recoveredBlock11Block19Stack2).
            recoveredBlock11Block19PC := 45.
        ].
        recoveredBlock11Block19Step = 45 ifTrue: [
            recoveredBlock11Block19Stack2 := recoveredBlock11Block19Stack1.
            recoveredBlock11Block19PC := 46.
        ].
        recoveredBlock11Block19Step = 46 ifTrue: [
            recoveredLocal1 := recoveredBlock11Block19Stack2.
            recoveredBlock11Block19PC := 49.
        ].
        recoveredBlock11Block19Step = 49 ifTrue: [
            recoveredBlock11Block19Result := recoveredBlock11Block19Stack1.
            recoveredBlock11Block19Done := true.
        ].
    ].
    recoveredBlock11Block19Result
].
    recoveredBlock11Value2 := (recoveredBlock11Value0) do: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) min: (1).
    recoveredValue8 := (recoveredValue7) + (-1).
    (recoveredValue5) lineNumber: (recoveredValue8).
    fileSource := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x20428284; bytecode file offset 0xd24b74"
!SGCgServiceTable methodsFor: 'recovered'!
missingTemplate: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIleExpander.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredLocal2.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) nextPutAll: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 |
    recoveredBlock24Value0 := recoveredLocal2.
    recoveredBlock24Value1 := (recoveredBlock24Value0) nextPutAll: ('|').
    recoveredBlock24Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileSource.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := #('Service definition').
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMultiSource: (recoveredStack1) labels: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIleExpander.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := errorCode.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := errorCode.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ileSemErrNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20432838; bytecode file offset 0xd2f128"
!SGCgServiceTable methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) fileName.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    (recoveredValue0) cr.
    recoveredValue3 := (self) table.
    recoveredValue4 := (recoveredValue3) keys.
    recoveredValue5 := (recoveredValue4) asSortedCollection.
    recoveredValue6 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 |
    recoveredBlock19Value0 := (self) table.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value0) at: (recoveredBlock19Value1).
    recoveredBlock19Local1 := recoveredBlock19Value2.
    recoveredBlock19Value3 := recoveredBlock19Local1.
    recoveredBlock19Value4 := [:recoveredBlock19Block32Arg1 | 
    | recoveredBlock19Block32Value0 recoveredBlock19Block32Value1 recoveredBlock19Block32Value2 recoveredBlock19Block32Value3 recoveredBlock19Block32Value4 recoveredBlock19Block32Value5 recoveredBlock19Block32Value6 recoveredBlock19Block32Value7 recoveredBlock19Block32Value8 recoveredBlock19Block32Value9 recoveredBlock19Block32Value10 |
    recoveredBlock19Block32Value0 := recoveredBlock19Block32Arg1.
    recoveredBlock19Block32Value1 := (recoveredBlock19Block32Value0) key.
    recoveredBlock19Block32Value2 := [:recoveredBlock19Block32Block41Arg1 | 
    | recoveredBlock19Block32Block41Value0 recoveredBlock19Block32Block41Value1 recoveredBlock19Block32Block41Value2 recoveredBlock19Block32Block41Value3 recoveredBlock19Block32Block41Value4 |
    recoveredBlock19Block32Block41Value0 := recoveredArg1.
    recoveredBlock19Block32Block41Value1 := recoveredBlock19Block32Block41Arg1.
    recoveredBlock19Block32Block41Value2 := (self) separator.
    recoveredBlock19Block32Block41Value3 := (recoveredBlock19Block32Block41Value1) , (recoveredBlock19Block32Block41Value2).
    recoveredBlock19Block32Block41Value4 := (recoveredBlock19Block32Block41Value0) nextPutAll: (recoveredBlock19Block32Block41Value3).
    recoveredBlock19Block32Block41Value4
].
    recoveredBlock19Block32Value3 := [
    | recoveredBlock19Block32Block59Value0 recoveredBlock19Block32Block59Value1 |
    recoveredBlock19Block32Block59Value0 := recoveredArg1.
    recoveredBlock19Block32Block59Value1 := (recoveredBlock19Block32Block59Value0) nextPut: ($|).
    recoveredBlock19Block32Block59Value1
].
    (recoveredBlock19Block32Value1) do: (recoveredBlock19Block32Value2) separatedBy: (recoveredBlock19Block32Value3).
    recoveredBlock19Block32Value4 := recoveredArg1.
    (recoveredBlock19Block32Value4) nextPut: ($=).
    recoveredBlock19Block32Value5 := recoveredArg1.
    recoveredBlock19Block32Value6 := recoveredBlock19Block32Value5.
    recoveredBlock19Block32Value7 := recoveredBlock19Block32Arg1.
    recoveredBlock19Block32Value8 := (recoveredBlock19Block32Value7) value.
    recoveredBlock19Block32Value9 := (recoveredBlock19Block32Value8) first.
    (recoveredBlock19Block32Value6) nextPutAll: (recoveredBlock19Block32Value9).
    recoveredBlock19Block32Value10 := (recoveredBlock19Block32Value5) cr.
    recoveredBlock19Block32Value10
].
    recoveredBlock19Value5 := (recoveredBlock19Value3) do: (recoveredBlock19Value4).
    recoveredBlock19Value5
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2045db2c; bytecode file offset 0xd5a408"
!SGCgServiceTable methodsFor: 'recovered'!
getEntryWithKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) table.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredValue3 := (recoveredValue2) asUppercase.
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := false.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) key.
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) size.
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg1.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) size.
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) = (recoveredBlock28Stack3).
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 52] ifFalse: [recoveredBlock28PC := 96].
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Stack1 := true.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) key.
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28Stack2 := [:recoveredBlock28Block62Arg1 :recoveredBlock28Block62Arg2 | 
    | recoveredBlock28Block62Stack0 recoveredBlock28Block62Stack1 recoveredBlock28Block62Stack2 recoveredBlock28Block62Stack3 recoveredBlock28Block62Stack4 recoveredBlock28Block62Stack5 recoveredBlock28Block62PC recoveredBlock28Block62Step recoveredBlock28Block62Done recoveredBlock28Block62Result |
    recoveredBlock28Block62Stack0 := nil.
    recoveredBlock28Block62PC := 68.
    recoveredBlock28Block62Done := false.
    [recoveredBlock28Block62Done not] whileTrue: [
        recoveredBlock28Block62Step := recoveredBlock28Block62PC.
        recoveredBlock28Block62Step = 68 ifTrue: [
            recoveredBlock28Block62Stack1 := nil.
            recoveredBlock28Block62PC := 69.
        ].
        recoveredBlock28Block62Step = 69 ifTrue: [
            recoveredBlock28Block62Stack2 := recoveredBlock28Block62Arg1.
            recoveredBlock28Block62PC := 70.
        ].
        recoveredBlock28Block62Step = 70 ifTrue: [
            recoveredBlock28Block62Stack3 := recoveredArg1.
            recoveredBlock28Block62PC := 73.
        ].
        recoveredBlock28Block62Step = 73 ifTrue: [
            recoveredBlock28Block62Stack4 := recoveredBlock28Block62Arg2.
            recoveredBlock28Block62PC := 74.
        ].
        recoveredBlock28Block62Step = 74 ifTrue: [
            recoveredBlock28Block62Stack3 := (recoveredBlock28Block62Stack3) at: (recoveredBlock28Block62Stack4).
            recoveredBlock28Block62PC := 75.
        ].
        recoveredBlock28Block62Step = 75 ifTrue: [
            recoveredBlock28Block62Stack2 := (recoveredBlock28Block62Stack2) match: (recoveredBlock28Block62Stack3).
            recoveredBlock28Block62PC := 77.
        ].
        recoveredBlock28Block62Step = 77 ifTrue: [
            (recoveredBlock28Block62Stack2) ifTrue: [recoveredBlock28Block62PC := 86] ifFalse: [recoveredBlock28Block62PC := 80].
        ].
        recoveredBlock28Block62Step = 80 ifTrue: [
            recoveredBlock28Block62PC := 81.
        ].
        recoveredBlock28Block62Step = 81 ifTrue: [
            recoveredBlock28Block62Stack1 := false.
            recoveredBlock28Block62PC := 82.
        ].
        recoveredBlock28Block62Step = 82 ifTrue: [
            recoveredBlock28Block62Stack2 := recoveredBlock28Block62Stack1.
            recoveredBlock28Block62PC := 83.
        ].
        recoveredBlock28Block62Step = 83 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Block62Stack2.
            recoveredBlock28Block62PC := 86.
        ].
        recoveredBlock28Block62Step = 86 ifTrue: [
            recoveredBlock28Block62Result := recoveredBlock28Block62Stack1.
            recoveredBlock28Block62Done := true.
        ].
    ].
    recoveredBlock28Block62Result
].
            recoveredBlock28PC := 87.
        ].
        recoveredBlock28Step = 87 ifTrue: [
            (recoveredBlock28Stack1) doWithIndex: (recoveredBlock28Stack2).
            recoveredBlock28PC := 89.
        ].
        recoveredBlock28Step = 89 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 92.
        ].
        recoveredBlock28Step = 92 ifTrue: [
            recoveredBlock28Stack2 := nil.
            recoveredBlock28PC := 93.
        ].
        recoveredBlock28Step = 93 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack2.
            recoveredBlock28PC := 96.
        ].
        recoveredBlock28Step = 96 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    recoveredValue8 := [
    ^nil
].
    recoveredValue9 := (recoveredValue6) detect: (recoveredValue7) ifNone: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) value.
    ^recoveredValue11
! !

"ASDBase.ic method 0x204644f8; bytecode file offset 0xd60dcc"
!SGCgServiceTable methodsFor: 'recovered'!
getExactEntryWithKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) table.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredValue3 := (recoveredValue2) asUppercase.
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Local2 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := false.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) key.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) size.
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg1.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) size.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) = (recoveredBlock28Stack3).
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 50] ifFalse: [recoveredBlock28PC := 98].
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack1 := true.
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Stack1 := 1.
            recoveredBlock28PC := 55.
        ].
        recoveredBlock28Step = 55 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) key.
            recoveredBlock28PC := 59.
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) size.
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28PC := 80.
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) key.
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Local1.
            recoveredBlock28PC := 68.
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) at: (recoveredBlock28Stack3).
            recoveredBlock28PC := 69.
        ].
        recoveredBlock28Step = 69 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg1.
            recoveredBlock28PC := 72.
        ].
        recoveredBlock28Step = 72 ifTrue: [
            recoveredBlock28Stack4 := recoveredBlock28Local1.
            recoveredBlock28PC := 73.
        ].
        recoveredBlock28Step = 73 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) at: (recoveredBlock28Stack4).
            recoveredBlock28PC := 74.
        ].
        recoveredBlock28Step = 74 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) = (recoveredBlock28Stack3).
            recoveredBlock28PC := 75.
        ].
        recoveredBlock28Step = 75 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 80] ifFalse: [recoveredBlock28PC := 78].
        ].
        recoveredBlock28Step = 78 ifTrue: [
            recoveredBlock28Stack2 := false.
            recoveredBlock28PC := 79.
        ].
        recoveredBlock28Step = 79 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack2.
            recoveredBlock28PC := 80.
        ].
        recoveredBlock28Step = 80 ifTrue: [
            (recoveredBlock28Stack1 isInteger and: [recoveredBlock28Local1 isInteger]) ifTrue: [(recoveredBlock28Local1 + 1 <= recoveredBlock28Stack1) ifTrue: [recoveredBlock28Local1 := recoveredBlock28Local1 + 1. recoveredBlock28PC := 64] ifFalse: [recoveredBlock28Local1 := nil. recoveredBlock28PC := 94]] ifFalse: [recoveredBlock28PC := 84].
        ].
        recoveredBlock28Step = 84 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 85.
        ].
        recoveredBlock28Step = 85 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Local1.
            recoveredBlock28PC := 86.
        ].
        recoveredBlock28Step = 86 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) + (1).
            recoveredBlock28PC := 87.
        ].
        recoveredBlock28Step = 87 ifTrue: [
            recoveredBlock28Stack4 := recoveredBlock28Stack3.
            recoveredBlock28PC := 88.
        ].
        recoveredBlock28Step = 88 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack4.
            recoveredBlock28PC := 89.
        ].
        recoveredBlock28Step = 89 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) < (recoveredBlock28Stack3).
            recoveredBlock28PC := 90.
        ].
        recoveredBlock28Step = 90 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 92] ifFalse: [recoveredBlock28PC := 64].
        ].
        recoveredBlock28Step = 92 ifTrue: [
            recoveredBlock28Stack2 := nil.
            recoveredBlock28PC := 93.
        ].
        recoveredBlock28Step = 93 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack2.
            recoveredBlock28PC := 94.
        ].
        recoveredBlock28Step = 94 ifTrue: [
            recoveredBlock28PC := 95.
        ].
        recoveredBlock28Step = 95 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local2.
            recoveredBlock28PC := 96.
        ].
        recoveredBlock28Step = 96 ifTrue: [
            recoveredBlock28Stack2 := nil.
            recoveredBlock28PC := 97.
        ].
        recoveredBlock28Step = 97 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack2.
            recoveredBlock28PC := 98.
        ].
        recoveredBlock28Step = 98 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    recoveredValue8 := [
    ^nil
].
    recoveredValue9 := (recoveredValue6) detect: (recoveredValue7) ifNone: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) value.
    ^recoveredValue11
! !

"ASDBase.ic method 0x204e3524; bytecode file offset 0xddfe28"
!SGCgServiceTable methodsFor: 'recovered'!
getDistribDifference: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack3 := 'DISTRIB'.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) endsWith: (recoveredBlock11Stack3).
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 28] ifFalse: [recoveredBlock11PC := 137].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) table.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block34Arg1 | 
    | recoveredBlock11Block34Local1 recoveredBlock11Block34Stack0 recoveredBlock11Block34Stack1 recoveredBlock11Block34Stack2 recoveredBlock11Block34Stack3 recoveredBlock11Block34Stack4 recoveredBlock11Block34Stack5 recoveredBlock11Block34Stack6 recoveredBlock11Block34Stack7 recoveredBlock11Block34Stack8 recoveredBlock11Block34Stack9 recoveredBlock11Block34PC recoveredBlock11Block34Step recoveredBlock11Block34Done recoveredBlock11Block34Result |
    recoveredBlock11Block34Stack0 := self.
    recoveredBlock11Block34PC := 40.
    recoveredBlock11Block34Done := false.
    [recoveredBlock11Block34Done not] whileTrue: [
        recoveredBlock11Block34Step := recoveredBlock11Block34PC.
        recoveredBlock11Block34Step = 40 ifTrue: [
            recoveredBlock11Block34Stack1 := recoveredArg1.
            recoveredBlock11Block34PC := 43.
        ].
        recoveredBlock11Block34Step = 43 ifTrue: [
            recoveredBlock11Block34Stack2 := recoveredBlock11Block34Arg1.
            recoveredBlock11Block34PC := 44.
        ].
        recoveredBlock11Block34Step = 44 ifTrue: [
            recoveredBlock11Block34Stack2 := (recoveredBlock11Block34Stack2) key.
            recoveredBlock11Block34PC := 46.
        ].
        recoveredBlock11Block34Step = 46 ifTrue: [
            recoveredBlock11Block34Stack1 := (recoveredBlock11Block34Stack1) getDeepExactEntryWithKey: (recoveredBlock11Block34Stack2).
            recoveredBlock11Block34PC := 48.
        ].
        recoveredBlock11Block34Step = 48 ifTrue: [
            recoveredBlock11Block34Local1 := recoveredBlock11Block34Stack1.
            recoveredBlock11Block34PC := 49.
        ].
        recoveredBlock11Block34Step = 49 ifTrue: [
            recoveredBlock11Block34Stack1 := recoveredBlock11Block34Local1.
            recoveredBlock11Block34PC := 50.
        ].
        recoveredBlock11Block34Step = 50 ifTrue: [
            (recoveredBlock11Block34Stack1 ~~ nil) ifTrue: [recoveredBlock11Block34PC := 84] ifFalse: [recoveredBlock11Block34PC := 54].
        ].
        recoveredBlock11Block34Step = 54 ifTrue: [
            recoveredBlock11Block34Stack1 := recoveredLocal1.
            recoveredBlock11Block34PC := 57.
        ].
        recoveredBlock11Block34Step = 57 ifTrue: [
            recoveredBlock11Block34Stack2 := Array.
            recoveredBlock11Block34PC := 59.
        ].
        recoveredBlock11Block34Step = 59 ifTrue: [
            recoveredBlock11Block34Stack3 := recoveredBlock11Block34Arg1.
            recoveredBlock11Block34PC := 60.
        ].
        recoveredBlock11Block34Step = 60 ifTrue: [
            recoveredBlock11Block34Stack3 := (recoveredBlock11Block34Stack3) key.
            recoveredBlock11Block34PC := 62.
        ].
        recoveredBlock11Block34Step = 62 ifTrue: [
            recoveredBlock11Block34Stack4 := recoveredBlock11Block34Arg1.
            recoveredBlock11Block34PC := 63.
        ].
        recoveredBlock11Block34Step = 63 ifTrue: [
            recoveredBlock11Block34Stack4 := (recoveredBlock11Block34Stack4) value.
            recoveredBlock11Block34PC := 65.
        ].
        recoveredBlock11Block34Step = 65 ifTrue: [
            recoveredBlock11Block34Stack4 := (recoveredBlock11Block34Stack4) first.
            recoveredBlock11Block34PC := 67.
        ].
        recoveredBlock11Block34Step = 67 ifTrue: [
            recoveredBlock11Block34Stack5 := self.
            recoveredBlock11Block34PC := 68.
        ].
        recoveredBlock11Block34Step = 68 ifTrue: [
            recoveredBlock11Block34Stack6 := recoveredBlock11Block34Arg1.
            recoveredBlock11Block34PC := 69.
        ].
        recoveredBlock11Block34Step = 69 ifTrue: [
            recoveredBlock11Block34Stack6 := (recoveredBlock11Block34Stack6) key.
            recoveredBlock11Block34PC := 71.
        ].
        recoveredBlock11Block34Step = 71 ifTrue: [
            recoveredBlock11Block34Stack5 := (recoveredBlock11Block34Stack5) sourceForKey: (recoveredBlock11Block34Stack6).
            recoveredBlock11Block34PC := 73.
        ].
        recoveredBlock11Block34Step = 73 ifTrue: [
            recoveredBlock11Block34Stack6 := nil.
            recoveredBlock11Block34PC := 74.
        ].
        recoveredBlock11Block34Step = 74 ifTrue: [
            recoveredBlock11Block34Stack7 := nil.
            recoveredBlock11Block34PC := 75.
        ].
        recoveredBlock11Block34Step = 75 ifTrue: [
            recoveredBlock11Block34Stack2 := (recoveredBlock11Block34Stack2) with: (recoveredBlock11Block34Stack3) with: (recoveredBlock11Block34Stack4) with: (recoveredBlock11Block34Stack5) with: (recoveredBlock11Block34Stack6) with: (recoveredBlock11Block34Stack7).
            recoveredBlock11Block34PC := 78.
        ].
        recoveredBlock11Block34Step = 78 ifTrue: [
            recoveredBlock11Block34Stack1 := (recoveredBlock11Block34Stack1) add: (recoveredBlock11Block34Stack2).
            recoveredBlock11Block34PC := 80.
        ].
        recoveredBlock11Block34Step = 80 ifTrue: [
            recoveredBlock11Block34PC := 134.
        ].
        recoveredBlock11Block34Step = 84 ifTrue: [
            recoveredBlock11Block34Stack1 := nil.
            recoveredBlock11Block34PC := 85.
        ].
        recoveredBlock11Block34Step = 85 ifTrue: [
            recoveredBlock11Block34Stack2 := recoveredBlock11Block34Local1.
            recoveredBlock11Block34PC := 86.
        ].
        recoveredBlock11Block34Step = 86 ifTrue: [
            recoveredBlock11Block34Stack2 := (recoveredBlock11Block34Stack2) first.
            recoveredBlock11Block34PC := 88.
        ].
        recoveredBlock11Block34Step = 88 ifTrue: [
            recoveredBlock11Block34Stack3 := recoveredBlock11Block34Arg1.
            recoveredBlock11Block34PC := 89.
        ].
        recoveredBlock11Block34Step = 89 ifTrue: [
            recoveredBlock11Block34Stack3 := (recoveredBlock11Block34Stack3) value.
            recoveredBlock11Block34PC := 91.
        ].
        recoveredBlock11Block34Step = 91 ifTrue: [
            recoveredBlock11Block34Stack3 := (recoveredBlock11Block34Stack3) first.
            recoveredBlock11Block34PC := 93.
        ].
        recoveredBlock11Block34Step = 93 ifTrue: [
            recoveredBlock11Block34Stack2 := (recoveredBlock11Block34Stack2) ~= (recoveredBlock11Block34Stack3).
            recoveredBlock11Block34PC := 94.
        ].
        recoveredBlock11Block34Step = 94 ifTrue: [
            (recoveredBlock11Block34Stack2) ifTrue: [recoveredBlock11Block34PC := 98] ifFalse: [recoveredBlock11Block34PC := 134].
        ].
        recoveredBlock11Block34Step = 98 ifTrue: [
            recoveredBlock11Block34PC := 99.
        ].
        recoveredBlock11Block34Step = 99 ifTrue: [
            recoveredBlock11Block34Stack1 := recoveredLocal1.
            recoveredBlock11Block34PC := 102.
        ].
        recoveredBlock11Block34Step = 102 ifTrue: [
            recoveredBlock11Block34Stack2 := Array.
            recoveredBlock11Block34PC := 104.
        ].
        recoveredBlock11Block34Step = 104 ifTrue: [
            recoveredBlock11Block34Stack3 := recoveredBlock11Block34Arg1.
            recoveredBlock11Block34PC := 105.
        ].
        recoveredBlock11Block34Step = 105 ifTrue: [
            recoveredBlock11Block34Stack3 := (recoveredBlock11Block34Stack3) key.
            recoveredBlock11Block34PC := 107.
        ].
        recoveredBlock11Block34Step = 107 ifTrue: [
            recoveredBlock11Block34Stack4 := recoveredBlock11Block34Arg1.
            recoveredBlock11Block34PC := 108.
        ].
        recoveredBlock11Block34Step = 108 ifTrue: [
            recoveredBlock11Block34Stack4 := (recoveredBlock11Block34Stack4) value.
            recoveredBlock11Block34PC := 110.
        ].
        recoveredBlock11Block34Step = 110 ifTrue: [
            recoveredBlock11Block34Stack4 := (recoveredBlock11Block34Stack4) first.
            recoveredBlock11Block34PC := 112.
        ].
        recoveredBlock11Block34Step = 112 ifTrue: [
            recoveredBlock11Block34Stack5 := self.
            recoveredBlock11Block34PC := 113.
        ].
        recoveredBlock11Block34Step = 113 ifTrue: [
            recoveredBlock11Block34Stack6 := recoveredBlock11Block34Arg1.
            recoveredBlock11Block34PC := 114.
        ].
        recoveredBlock11Block34Step = 114 ifTrue: [
            recoveredBlock11Block34Stack6 := (recoveredBlock11Block34Stack6) key.
            recoveredBlock11Block34PC := 116.
        ].
        recoveredBlock11Block34Step = 116 ifTrue: [
            recoveredBlock11Block34Stack5 := (recoveredBlock11Block34Stack5) sourceForKey: (recoveredBlock11Block34Stack6).
            recoveredBlock11Block34PC := 118.
        ].
        recoveredBlock11Block34Step = 118 ifTrue: [
            recoveredBlock11Block34Stack6 := recoveredBlock11Block34Local1.
            recoveredBlock11Block34PC := 119.
        ].
        recoveredBlock11Block34Step = 119 ifTrue: [
            recoveredBlock11Block34Stack6 := (recoveredBlock11Block34Stack6) first.
            recoveredBlock11Block34PC := 121.
        ].
        recoveredBlock11Block34Step = 121 ifTrue: [
            recoveredBlock11Block34Stack7 := recoveredArg1.
            recoveredBlock11Block34PC := 124.
        ].
        recoveredBlock11Block34Step = 124 ifTrue: [
            recoveredBlock11Block34Stack8 := recoveredBlock11Block34Arg1.
            recoveredBlock11Block34PC := 125.
        ].
        recoveredBlock11Block34Step = 125 ifTrue: [
            recoveredBlock11Block34Stack8 := (recoveredBlock11Block34Stack8) key.
            recoveredBlock11Block34PC := 127.
        ].
        recoveredBlock11Block34Step = 127 ifTrue: [
            recoveredBlock11Block34Stack7 := (recoveredBlock11Block34Stack7) deepSourceForKey: (recoveredBlock11Block34Stack8).
            recoveredBlock11Block34PC := 129.
        ].
        recoveredBlock11Block34Step = 129 ifTrue: [
            recoveredBlock11Block34Stack2 := (recoveredBlock11Block34Stack2) with: (recoveredBlock11Block34Stack3) with: (recoveredBlock11Block34Stack4) with: (recoveredBlock11Block34Stack5) with: (recoveredBlock11Block34Stack6) with: (recoveredBlock11Block34Stack7).
            recoveredBlock11Block34PC := 132.
        ].
        recoveredBlock11Block34Step = 132 ifTrue: [
            recoveredBlock11Block34Stack1 := (recoveredBlock11Block34Stack1) add: (recoveredBlock11Block34Stack2).
            recoveredBlock11Block34PC := 134.
        ].
        recoveredBlock11Block34Step = 134 ifTrue: [
            recoveredBlock11Block34Result := recoveredBlock11Block34Stack1.
            recoveredBlock11Block34Done := true.
        ].
    ].
    recoveredBlock11Block34Result
].
            recoveredBlock11PC := 135.
        ].
        recoveredBlock11Step = 135 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 137.
        ].
        recoveredBlock11Step = 137 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDistribDifference: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205589e4; bytecode file offset 0xe552d0"
!SGCgServiceTable methodsFor: 'recovered'!
addTemplate: recoveredArg1 key: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := '%i'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := '%'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOfString: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal7 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := $?.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := $ .
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := $?.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := $(.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := $,.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := $).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := $,.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := '('.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack5 := recoveredLocal8.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 18] ifFalse: [recoveredLocal2 := nil. recoveredPC := 210]] ifFalse: [recoveredPC := 199].
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) addEntry: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20559d0c; bytecode file offset 0xe56630"
!SGCgServiceTable methodsFor: 'recovered'!
bindTemplateWithKey: recoveredArg1 to: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) getTemplateWithKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) missingTemplate: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindTemplateWithKey: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWithGeneralArguments: (recoveredStack1) ifAbsentContinue: (recoveredStack2) unknownArguments: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceForKey: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 301.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ileSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 221.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Value0 recoveredBlock119Value1 recoveredBlock119Value2 recoveredBlock119Value3 |
    recoveredBlock119Value0 := recoveredArg2.
    recoveredBlock119Value1 := recoveredBlock119Arg1.
    recoveredBlock119Value2 := (recoveredBlock119Value0) at: (recoveredBlock119Value1).
    recoveredBlock119Value3 := (recoveredBlock119Value2) isString.
    recoveredBlock119Value3
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := [:block281100b0Arg1 | 
    nil
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := [:recoveredBlock163Arg1 | 
    | recoveredBlock163Value0 recoveredBlock163Value1 recoveredBlock163Value2 recoveredBlock163Value3 recoveredBlock163Value4 recoveredBlock163Value5 recoveredBlock163Value6 |
    recoveredBlock163Value0 := recoveredBlock163Arg1.
    recoveredBlock163Value1 := ('Argument ') , (recoveredBlock163Value0).
    recoveredBlock163Value2 := (recoveredBlock163Value1) , (' is bound to ').
    recoveredBlock163Value3 := recoveredArg2.
    recoveredBlock163Value4 := recoveredBlock163Arg1.
    recoveredBlock163Value5 := (recoveredBlock163Value3) at: (recoveredBlock163Value4).
    recoveredBlock163Value6 := (recoveredBlock163Value2) , (recoveredBlock163Value5).
    recoveredBlock163Value6
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMultiSource: (recoveredStack1) labels: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := (recoveredStack4) first.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) ileSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := 'WRONG TEMPLATE: '.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

