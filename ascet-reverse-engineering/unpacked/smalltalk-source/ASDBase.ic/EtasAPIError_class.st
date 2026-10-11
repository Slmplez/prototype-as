"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012f00; bytecode file offset 0x912098"
!EtasAPIError class methodsFor: 'recovered'!
CodeErrorTable
    | recoveredValue0 |
    recoveredValue0 := CodeErrorTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ae2f8; bytecode file offset 0x9ab034"
!EtasAPIError class methodsFor: 'recovered'!
defineErrorNo: recoveredArg1 message: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) CodeErrorTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200cb534; bytecode file offset 0x9c7df0"
!EtasAPIError class methodsFor: 'recovered'!
defineAscetErrors
    (self) defineErrorNo: (1001) message: ('identifier not found').
    ^self
! !

"ASDBase.ic method 0x200d9f58; bytecode file offset 0x9d6868"
!EtasAPIError class methodsFor: 'recovered'!
createWithErrorCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) errorCode: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20105318; bytecode file offset 0xa01bd8"
!EtasAPIError class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CodeErrorTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            CodeErrorTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201151f0; bytecode file offset 0xa11ab4"
!EtasAPIError class methodsFor: 'recovered'!
createDefaultError
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) halt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithErrorCode: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015b06c; bytecode file offset 0xa57938"
!EtasAPIError class methodsFor: 'recovered'!
createWithErrorCode: recoveredArg1 errorObject: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithErrorCode: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) errorObject: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20376600; bytecode file offset 0xc72ebc"
!EtasAPIError class methodsFor: 'recovered'!
createErrorFromOptionReaderResult: recoveredArg1
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
            recoveredStack2 := -1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := EtasAPIError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 62.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithErrorCode: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := -2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := EtasAPIError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 63.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithErrorCode: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := -3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := EtasAPIError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithErrorCode: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := -4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := EtasAPIError.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 65.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithErrorCode: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := EtasAPIError.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 54.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithErrorCode: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20620b7c; bytecode file offset 0xf1d554"
!EtasAPIError class methodsFor: 'recovered'!
defineDefaultErrors
    (self) defineErrorNo: (1) message: ('database is not open').
    (self) defineErrorNo: (2) message: ('unable to create database').
    (self) defineErrorNo: (3) message: ('unable to open database').
    (self) defineErrorNo: (4) message: ('path could not created').
    (self) defineErrorNo: (5) message: ('path already exists').
    (self) defineErrorNo: (6) message: ('path not found').
    (self) defineErrorNo: (7) message: ('file not found').
    (self) defineErrorNo: (8) message: ('item already exists').
    (self) defineErrorNo: (9) message: ('item not found').
    (self) defineErrorNo: (10) message: ('method already exists').
    (self) defineErrorNo: (11) message: ('method not found').
    (self) defineErrorNo: (12) message: ('element already exists').
    (self) defineErrorNo: (13) message: ('element not found').
    (self) defineErrorNo: (14) message: ('type is unknown').
    (self) defineErrorNo: (15) message: ('invalid type').
    (self) defineErrorNo: (16) message: ('directory is not empty').
    (self) defineErrorNo: (17) message: ('name not valid').
    (self) defineErrorNo: (18) message: ('import failed').
    (self) defineErrorNo: (19) message: ('export failed').
    (self) defineErrorNo: (20) message: ('handle is not valid').
    (self) defineErrorNo: (21) message: ('diagram not found').
    (self) defineErrorNo: (22) message: ('diagram has wrong type').
    (self) defineErrorNo: (23) message: ('no sequence call found').
    (self) defineErrorNo: (24) message: ('general element error').
    (self) defineErrorNo: (25) message: ('duplicate name').
    (self) defineErrorNo: (26) message: ('connector not found').
    (self) defineErrorNo: (27) message: ('tool not running').
    (self) defineErrorNo: (28) message: ('target server not available').
    (self) defineErrorNo: (29) message: ('code generation failed').
    (self) defineErrorNo: (30) message: ('element is already used in specifications').
    (self) defineErrorNo: (31) message: ('receiver is not related to this api').
    (self) defineErrorNo: (32) message: ('invalid coordinate').
    (self) defineErrorNo: (33) message: ('data not found').
    (self) defineErrorNo: (34) message: ('implementation not found').
    (self) defineErrorNo: (35) message: ('max size exceeded').
    (self) defineErrorNo: (36) message: ('current size exceeded').
    (self) defineErrorNo: (37) message: ('invalid parameter').
    (self) defineErrorNo: (38) message: ('folder not empty').
    (self) defineErrorNo: (39) message: ('unable connecting blocks in different hierarchies').
    (self) defineErrorNo: (40) message: ('not a valid ansi c identifier').
    (self) defineErrorNo: (41) message: ('os logic not found').
    (self) defineErrorNo: (42) message: ('task not found').
    (self) defineErrorNo: (43) message: ('index not found').
    (self) defineErrorNo: (44) message: ('task already exists').
    (self) defineErrorNo: (45) message: ('operating mode not found').
    (self) defineErrorNo: (46) message: ('operating mode already exists').
    (self) defineErrorNo: (47) message: ('could not generate file').
    (self) defineErrorNo: (48) message: ('could not read file').
    (self) defineErrorNo: (49) message: ('event not specified by target').
    (self) defineErrorNo: (50) message: ('text segment not found').
    (self) defineErrorNo: (51) message: ('invalid format').
    (self) defineErrorNo: (52) message: ('no selection').
    (self) defineErrorNo: (53) message: ('window not found').
    (self) defineErrorNo: (54) message: ('action failed').
    (self) defineErrorNo: (55) message: ('internal model error').
    (self) defineErrorNo: (56) message: ('data acquisition is running').
    (self) defineErrorNo: (57) message: ('data element not available').
    (self) defineErrorNo: (58) message: ('feature is not supported').
    (self) defineErrorNo: (59) message: ('wrong database version').
    (self) defineErrorNo: (60) message: ('target does not support this feature').
    (self) defineErrorNo: (61) message: ('could not modify component with write protection').
    (self) defineErrorNo: (62) message: ('file not readable').
    (self) defineErrorNo: (63) message: ('XML Parser error').
    (self) defineErrorNo: (64) message: ('Invalid XML document').
    (self) defineErrorNo: (65) message: ('Invalid option value detected').
    (self) defineErrorNo: (66) message: ('Item is not modifiable').
    (self) defineErrorNo: (67) message: ('SCM Scripting Interface not activated').
    (self) defineErrorNo: (68) message: ('Unknown SCM command').
    (self) defineErrorNo: (69) message: ('SCM Scripting command failed').
    (self) defineErrorNo: (70) message: ('Invalid SCM XML data').
    (self) defineErrorNo: (71) message: ('SCM command failed').
    (self) defineErrorNo: (72) message: ('Problem occurred while closing windows').
    ^self
! !

