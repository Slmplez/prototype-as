"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200030d0; bytecode file offset 0x8ffcfc"
!SGCodeGenerationKernelApp class methodsFor: 'recovered'!
_PRAGMA_SGCgExceptions
    ^self
! !

"ASDBase.ic method 0x204be1ac; bytecode file offset 0xdbaa9c"
!SGCodeGenerationKernelApp class methodsFor: 'recovered'!
initializeCodeGenerationExceptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExSGCgFatal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ExSGCgFatal := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExSGCgFatal.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'A FATAL error (internal) has occurred'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := ExHalt.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultHandler.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := ExSGCgFatalWithDisplay.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := ExSGCgFatal.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ExSGCgFatalWithDisplay := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := ExSGCgFatalWithDisplay.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'A FATAL error (internal) has occurred'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := ExSGCgFatal.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultHandler.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := ExSGCgNotAvail.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := ExSGCgFatal.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ExSGCgNotAvail := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := ExSGCgNotAvail.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := 'Feature not available'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := ExSGCgFatal.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultHandler.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := ExSGCgError.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ExSGCgError := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := ExSGCgError.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) markReadOnly: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := 'An ERROR has occurred'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := ExHalt.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultHandler.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack2) resumable: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d5b60; bytecode file offset 0xed2578"
!SGCodeGenerationKernelApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 |
    (self) initializeCodeGenerationExceptions.
    recoveredValue0 := SGCgErrorHandler.
    (recoveredValue0) createCurrentInstance: ('Code Generation').
    recoveredValue1 := SGCgErrorHandler.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('FCg0') put: ('%1').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('FCg1') put: ('%1: expected %2').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: ('FCg2') put: ('incorrectly built syntax tree').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: ('FCg3') put: ('invalid method call').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: ('FCg4') put: ('%1: missing keyword').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: ('FCg42') put: ('%1: unknown operator').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: ('FCg43') put: ('%1: still elements on stack').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) at: ('FCg5') put: ('GENERAL: no class named <%1>').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) at: ('FCg6') put: ('GENERAL: not yet implemented').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) at: ('FCg7') put: ('GENERAL: stack empty').
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) at: ('FCg71') put: ('GENERAL: stack full').
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) at: ('FCg12') put: ('GENERAL: missing error message').
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) at: ('FCg81') put: ('invalid OS expander type: %1').
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) at: ('FCg811') put: ('invalid Init expander type: %1').
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) at: ('FCg82') put: ('value of Macro %1 must be boolean (true,false,0 or 1)').
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) at: ('FCg83') put: ('undefined Macro: %1').
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) at: ('FCg84') put: ('invalid value %2 of Macro: %1 (unknown templates: %3)').
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) at: ('FCg85') put: ('undefined Template:  %1').
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) at: ('FCg86') put: ('undefined value in compiler declaration file:  %1').
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) at: ('FCg9') put: ('temporary variables management error for <%1>').
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) at: ('MCg11') put: ('identifier <%1> already declared - used as keyword').
    recoveredValue23 := recoveredValue1.
    (recoveredValue23) at: ('MCg2') put: ('identifier <%1> not declared').
    recoveredValue24 := recoveredValue1.
    (recoveredValue24) at: ('MCg21') put: ('class <%1> not declared').
    recoveredValue25 := recoveredValue1.
    (recoveredValue25) at: ('MCg22') put: ('method <%1> not declared').
    recoveredValue26 := recoveredValue1.
    (recoveredValue26) at: ('MCg3') put: ('identifier <%1> already declared in scope <%2>').
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) at: ('MCg4') put: ('identifier <%1> not declared in scope <%2>').
    recoveredValue28 := recoveredValue1.
    (recoveredValue28) at: ('MCg5') put: ('type mismatch between <%1> and <%2>').
    recoveredValue29 := recoveredValue1.
    (recoveredValue29) at: ('MCg6') put: ('type mismatch: expected <%1>, got <%2>').
    recoveredValue30 := recoveredValue1.
    (recoveredValue30) at: ('MCg61') put: ('type mismatch: expected <log> got <%1>').
    recoveredValue31 := recoveredValue1.
    (recoveredValue31) at: ('MCg62') put: ('type mismatch: expected scalar type, got <%1>').
    recoveredValue32 := recoveredValue1.
    (recoveredValue32) at: ('MCg7') put: ('wrong number of arguments for call of <%1>').
    recoveredValue33 := recoveredValue1.
    (recoveredValue33) at: ('MCg8') put: ('macro on stack is not an expr').
    recoveredValue34 := recoveredValue1.
    (recoveredValue34) at: ('MCg81') put: ('macro on stack is an expr').
    recoveredValue35 := recoveredValue1.
    (recoveredValue35) at: ('ECg1') put: ('logic has semantic errors; should not be able to generate Code').
    recoveredValue36 := recoveredValue1.
    (recoveredValue36) at: ('ECg2') put: ('Invalid %1 path name: %2').
    recoveredValue37 := recoveredValue1.
    (recoveredValue37) at: ('ECg5') put: ('%1 "%2", used as SHORT-NAME tag in AUTOSAR XML generation, must not %3').
    recoveredValue38 := recoveredValue1.
    (recoveredValue38) at: ('ECg84') put: ('Invalid template parameter(s) "%1" used for symbol "%2"').
    recoveredValue39 := recoveredValue1.
    (recoveredValue39) at: ('ECg85') put: ('"%1" is not a valid ANSIC identifier --- check symbol template "%2"').
    recoveredValue40 := recoveredValue1.
    (recoveredValue40) at: ('WCg5') put: ('%1 "%2", used as SHORT-NAME tag in AUTOSAR XML generation, should match AUTOSAR specification --- %3').
    recoveredValue41 := recoveredValue1.
    (recoveredValue41) at: ('WCg6') put: ('The type casting "%1" will be removed in future versions, please select one of the other type casting strategies instead.').
    recoveredValue42 := recoveredValue1.
    (recoveredValue42) at: ('WCg7') put: ('The type casting "%1" does not support combined arithmetic services without limitation of the intermediate result. Please use the MISRA type casting instead.').
    recoveredValue43 := recoveredValue1.
    (recoveredValue43) at: ('WCg10') put: ('Obsolete template parameter: "%2" used for symbol "%1" - will be replaced by modern equivalents').
    ^self
! !

