"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002c4e4; bytecode file offset 0x934580"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200609b0; bytecode file offset 0x95d388"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createCategoryTraceClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := CATEGORYTYPE_TRACE_CLASS.
    recoveredValue2 := (recoveredValue0) category: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200609d8; bytecode file offset 0x95d388"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createCategoryTraceModule
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := CATEGORYTYPE_TRACE_MODULE.
    recoveredValue2 := (recoveredValue0) category: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060a00; bytecode file offset 0x95d388"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createCategoryInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := CATEGORYTYPE_INFO.
    recoveredValue2 := (recoveredValue0) category: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060a14; bytecode file offset 0x95d388"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createCategoryWarning
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := CATEGORYTYPE_WARNING.
    recoveredValue2 := (recoveredValue0) category: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060a28; bytecode file offset 0x95d388"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createCategoryException
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := CATEGORYTYPE_EXCEPTION.
    recoveredValue2 := (recoveredValue0) category: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060a64; bytecode file offset 0x95d388"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createCategoryError
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := CATEGORYTYPE_ERROR.
    recoveredValue2 := (recoveredValue0) category: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060a8c; bytecode file offset 0x95d388"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createCategoryTraceLoop
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := CATEGORYTYPE_TRACE_LOOP.
    recoveredValue2 := (recoveredValue0) category: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060aa0; bytecode file offset 0x95d388"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createCategoryTraceMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := CATEGORYTYPE_TRACE_METHOD.
    recoveredValue2 := (recoveredValue0) category: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20100a68; bytecode file offset 0x9fd3d4"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
traceModuled: recoveredArg1 forModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createLoggerInfo: (recoveredValue0) forModule: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CATEGORYTYPE_TRACE_MODULE.
    (recoveredValue3) category: (recoveredValue4).
    recoveredValue5 := (recoveredValue2) writeToLogfile.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100a80; bytecode file offset 0x9fd3d4"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
logException: recoveredArg1 forModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createLoggerInfo: (recoveredValue0) forModule: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CATEGORYTYPE_EXCEPTION.
    (recoveredValue3) category: (recoveredValue4).
    recoveredValue5 := (recoveredValue2) writeToLogfile.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100a98; bytecode file offset 0x9fd3d4"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
traceLoop: recoveredArg1 forModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createLoggerInfo: (recoveredValue0) forModule: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CATEGORYTYPE_TRACE_LOOP.
    (recoveredValue3) category: (recoveredValue4).
    recoveredValue5 := (recoveredValue2) writeToLogfile.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100ab0; bytecode file offset 0x9fd3d4"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
traceMethod: recoveredArg1 forModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createLoggerInfo: (recoveredValue0) forModule: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CATEGORYTYPE_TRACE_METHOD.
    (recoveredValue3) category: (recoveredValue4).
    recoveredValue5 := (recoveredValue2) writeToLogfile.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100ac8; bytecode file offset 0x9fd3d4"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
logWarning: recoveredArg1 forModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createLoggerInfo: (recoveredValue0) forModule: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CATEGORYTYPE_WARNING.
    (recoveredValue3) category: (recoveredValue4).
    recoveredValue5 := (recoveredValue2) writeToLogfile.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100ae0; bytecode file offset 0x9fd3d4"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
traceClass: recoveredArg1 forModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createLoggerInfo: (recoveredValue0) forModule: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CATEGORYTYPE_TRACE_CLASS.
    (recoveredValue3) category: (recoveredValue4).
    recoveredValue5 := (recoveredValue2) writeToLogfile.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100af8; bytecode file offset 0x9fd3d4"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
logError: recoveredArg1 forModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createLoggerInfo: (recoveredValue0) forModule: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CATEGORYTYPE_ERROR.
    (recoveredValue3) category: (recoveredValue4).
    recoveredValue5 := (recoveredValue2) writeToLogfile.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100b10; bytecode file offset 0x9fd3d4"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
logInfo: recoveredArg1 forModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createLoggerInfo: (recoveredValue0) forModule: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CATEGORYTYPE_INFO.
    (recoveredValue3) category: (recoveredValue4).
    recoveredValue5 := (recoveredValue2) writeToLogfile.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201503a0; bytecode file offset 0xa4cc70"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
testWriteToLogFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) createObjectForTest.
    (recoveredValue0) writeToLogfile.
    recoveredValue1 := EtasLoggerInfoObject.
    recoveredValue2 := (String new: 6) at: 1 put: (Character value: 70); at: 2 put: (Character value: 228); at: 3 put: (Character value: 228); at: 4 put: (Character value: 108); at: 5 put: (Character value: 101); at: 6 put: (Character value: 114); yourself.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) asString.
    (recoveredValue1) logWarning: (recoveredValue2) forModule: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201a8764; bytecode file offset 0xaa5038"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createLoggerInfo: recoveredArg1 forModule: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := Processor.
    recoveredValue3 := (recoveredValue2) activeProcess.
    recoveredValue4 := (recoveredValue3) methodAtFrame: (2).
    recoveredValue5 := (recoveredValue4) printString.
    (recoveredValue1) location: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) module: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) message: (recoveredValue9).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20218460; bytecode file offset 0xb14d48"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
createObjectForTest
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) module: ('Test_Module').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) location: ('Test_Location').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) category: ('trace_module').
    recoveredValue4 := Date.
    recoveredValue5 := (recoveredValue4) dateAndTimeNow.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := ('Test_Message created on ') , (recoveredValue6).
    recoveredValue8 := (recoveredValue0) message: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202a8040; bytecode file offset 0xba4930"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
dummy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasLoggerInfoObject.
    recoveredValue1 := (String new: 6) at: 1 put: (Character value: 70); at: 2 put: (Character value: 228); at: 3 put: (Character value: 228); at: 4 put: (Character value: 108); at: 5 put: (Character value: 101); at: 6 put: (Character value: 114); yourself.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) asString.
    (recoveredValue0) logWarning: (recoveredValue1) forModule: (recoveredValue3).
    recoveredValue4 := EtasLoggerInfoObject.
    recoveredValue5 := (String new: 16) at: 1 put: (Character value: 83); at: 2 put: (Character value: 99); at: 3 put: (Character value: 104); at: 4 put: (Character value: 108); at: 5 put: (Character value: 105); at: 6 put: (Character value: 101); at: 7 put: (Character value: 109); at: 8 put: (Character value: 101); at: 9 put: (Character value: 114); at: 10 put: (Character value: 32); at: 11 put: (Character value: 70); at: 12 put: (Character value: 228); at: 13 put: (Character value: 228); at: 14 put: (Character value: 108); at: 15 put: (Character value: 101); at: 16 put: (Character value: 114); yourself.
    (recoveredValue4) logError: (recoveredValue5) forModule: ('global module').
    recoveredValue6 := EtasLoggerInfoObject.
    (recoveredValue6) logException: ('Ausnahme!!') forModule: ('weiss nich').
    recoveredValue7 := EtasLoggerInfoObject.
    (recoveredValue7) traceClass: ('trace class') forModule: ('global module').
    recoveredValue8 := EtasLoggerInfoObject.
    (recoveredValue8) traceLoop: ('trace loop') forModule: ('weiss nich').
    ^self
! !

"ASDBase.ic method 0x20349c10; bytecode file offset 0xc464f0"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
possibleCategories
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := CATEGORYTYPE_EXCEPTION.
    (recoveredValue2) at: (recoveredValue3) put: (0).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := CATEGORYTYPE_ERROR.
    (recoveredValue4) at: (recoveredValue5) put: (1).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := CATEGORYTYPE_WARNING.
    (recoveredValue6) at: (recoveredValue7) put: (2).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := CATEGORYTYPE_INFO.
    (recoveredValue8) at: (recoveredValue9) put: (3).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := CATEGORYTYPE_TRACE_MODULE.
    (recoveredValue10) at: (recoveredValue11) put: (4).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := CATEGORYTYPE_TRACE_CLASS.
    (recoveredValue12) at: (recoveredValue13) put: (5).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := CATEGORYTYPE_TRACE_METHOD.
    (recoveredValue14) at: (recoveredValue15) put: (6).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := CATEGORYTYPE_TRACE_LOOP.
    (recoveredValue16) at: (recoveredValue17) put: (7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x203732e4; bytecode file offset 0xc6fbd4"
!EtasLoggerInfoObject class methodsFor: 'recovered'!
getMethodLocation: recoveredArg1 class: recoveredArg2 method: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Locale.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) preferredStringClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := '>>'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmptyOrNil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'nil'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := '#'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := '#'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

