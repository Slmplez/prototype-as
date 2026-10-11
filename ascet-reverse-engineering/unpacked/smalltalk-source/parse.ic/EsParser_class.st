"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000548; bytecode file offset 0x15bac"
!EsParser class methodsFor: 'recovered'!
cleanUpBeforeRemove
    RegisteredKeywords := nil.
    ^self
! !

"parse.ic method 0x200006ac; bytecode file offset 0x15d28"
!EsParser class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) compiler: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x2000125c; bytecode file offset 0x168f8"
!EsParser class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"parse.ic method 0x20001808; bytecode file offset 0x16e64"
!EsParser class methodsFor: 'recovered'!
registerKeyword: recoveredArg1 handler: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) registeredKeywords.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"parse.ic method 0x20001894; bytecode file offset 0x16ef4"
!EsParser class methodsFor: 'recovered'!
deregisterKeyword: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) registeredKeywords.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"parse.ic method 0x2000207c; bytecode file offset 0x176d4"
!EsParser class methodsFor: 'recovered'!
parse: recoveredArg1 class: recoveredArg2 errorHandler: recoveredArg3 ifFail: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) parse: (recoveredValue0) class: (recoveredValue1) scanComments: (false) errorHandler: (recoveredValue2) ifFail: (recoveredValue3).
    ^recoveredValue4
! !

"parse.ic method 0x20003500; bytecode file offset 0x18b68"
!EsParser class methodsFor: 'recovered'!
registeredKeywords
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RegisteredKeywords.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block28002bb0Value0 block28002bb0Value1 block28002bb0Value2 |
    block28002bb0Value0 := LookupTable.
    block28002bb0Value1 := (block28002bb0Value0) new.
    block28002bb0Value2 := block28002bb0Value1.
    RegisteredKeywords := block28002bb0Value2.
    block28002bb0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20006144; bytecode file offset 0x1b7cc"
!EsParser class methodsFor: 'recovered'!
parse: recoveredArg1 class: recoveredArg2 scanComments: recoveredArg3 errorHandler: recoveredArg4 ifFail: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EsCompiler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := EsCompiler.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) nameEnvironmentForClass: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := EsSilentErrorHandler.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := (recoveredStack6) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) parse: (recoveredStack2) environment: (recoveredStack3) messagePattern: (recoveredStack4) scanComments: (recoveredStack5) errorHandler: (recoveredStack6).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) wasSuccessful.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorObject.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'parseError:sourcePosition:'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) message.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) startPosition.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) parseError: (recoveredStack2) sourcePosition: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) parseTree.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20006f50; bytecode file offset 0x1c5dc"
!EsParser class methodsFor: 'recovered'!
initializeOnLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'primitive:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block28002e38Arg1 | 
    | block28002e38Value0 block28002e38Value1 |
    block28002e38Value0 := block28002e38Arg1.
    block28002e38Value1 := (block28002e38Value0) xxstandardPrimitive.
    block28002e38Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) registerKeyword: (recoveredStack2) handler: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'sysprim:'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [:block28002e5cArg1 | 
    | block28002e5cValue0 block28002e5cValue1 |
    block28002e5cValue0 := block28002e5cArg1.
    block28002e5cValue1 := (block28002e5cValue0) xxsystemPrimitive.
    block28002e5cValue1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) registerKeyword: (recoveredStack2) handler: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'c:'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [:block28002e80Arg1 | 
    | block28002e80Value0 block28002e80Value1 |
    block28002e80Value0 := block28002e80Arg1.
    block28002e80Value1 := (block28002e80Value0) xxapiPrimitive.
    block28002e80Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) registerKeyword: (recoveredStack2) handler: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'C:'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [:block28002ea4Arg1 | 
    | block28002ea4Value0 block28002ea4Value1 |
    block28002ea4Value0 := block28002ea4Arg1.
    block28002ea4Value1 := (block28002ea4Value0) xxapiPrimitive.
    block28002ea4Value1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) registerKeyword: (recoveredStack2) handler: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'cdecl:'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:block28002ec8Arg1 | 
    | block28002ec8Value0 block28002ec8Value1 |
    block28002ec8Value0 := block28002ec8Arg1.
    block28002ec8Value1 := (block28002ec8Value0) xxapiPrimitive.
    block28002ec8Value1
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) registerKeyword: (recoveredStack1) handler: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

