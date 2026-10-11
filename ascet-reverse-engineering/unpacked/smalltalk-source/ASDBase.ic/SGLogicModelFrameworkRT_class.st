"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001928; bytecode file offset 0x8ffcfc"
!SGLogicModelFrameworkRT class methodsFor: 'recovered'!
_PRAGMA_SGLmExceptions
    ^self
! !

"ASDBase.ic method 0x200019a0; bytecode file offset 0x8ffcfc"
!SGLogicModelFrameworkRT class methodsFor: 'recovered'!
_PRAGMA_EsdlSyntaxColors
    ^self
! !

"ASDBase.ic method 0x2005bd44; bytecode file offset 0x958ab0"
!SGLogicModelFrameworkRT class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := SGLmManager.
    (recoveredValue0) resetGlobals.
    ^self
! !

"ASDBase.ic method 0x20274f08; bytecode file offset 0xb717e0"
!SGLogicModelFrameworkRT class methodsFor: 'recovered'!
initializeLogicModelExceptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExSGLmError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExSGCgFatal.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ExSGLmError := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExSGLmError.
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
            recoveredStack3 := 'An error has occured'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := ExSGCgFatal.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ef80c; bytecode file offset 0xeec24c"
!SGLogicModelFrameworkRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := SGCharTableWorkingPointAnalyzer.
    (recoveredValue0) registerAdditionalGenerator: (recoveredValue1).
    (self) initializeLogicModelExceptions.
    recoveredValue2 := SGCgErrorHandler.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('GLm1') put: ('during %1').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('GLm2') put: ('%1: could not open file <%2>').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('GLm21') put: ('%1: %2').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('GLm3') put: ('Reference init value undefined or not available. Please specify an internal init value for <%1>.').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('GLm4') put: ('Undefined init value for reference <%1>.').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('GLm5') put: ('Init value <%1> of reference <%2> must be in the same component.').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('GLm6') put: ('found broken connection (red line) -- please delete and redraw if needed').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('YPMI0') put: ('%1').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('YPMI1') put: ('Error on line %1: %2').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('YLm1') put: ('%1').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('YLm17') put: ('method %1 not found').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('MLm10') put: ('need %3 for imported element <%1> with type <%2>').
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('MLm11') put: ('missing component type for <%1>').
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: ('MLm12') put: ('missing name for implementation type of element "%1"').
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: ('MLm14') put: ('implementation type "%1" of element "%2" undefined in current project').
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: ('MLm15') put: ('Invalid specification for "Limit to maximum bit length" at element <%1>').
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: ('MLm2') put: ('multiple export of <%1>').
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: ('MLm20') put: ('both export <%1> and import <%2> must be of kind <%3>, but import is of type <%4>').
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: ('MLm21') put: ('both export <%1> and import <%2> must have identical %3').
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: ('MLm22') put: ('multiple export of "%1"').
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: ('MLm23') put: ('multiple mapping of "%1" %2 all of (%3) --- %4').
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: ('MLm3') put: ('<%1>: data types other than real are currently not supported').
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) at: ('MLm302') put: ('<%1> - due to %2 - can not be used as reference').
    recoveredValue26 := recoveredValue2.
    (recoveredValue26) at: ('MLm4') put: ('missing %1-distribution for group char table <%2> --- possibly deleted').
    recoveredValue27 := recoveredValue2.
    (recoveredValue27) at: ('MLm41') put: ('missing %1-distribution for group char table <%2>').
    recoveredValue28 := recoveredValue2.
    (recoveredValue28) at: ('MLm42') put: ('expected %1-distribution for group char table <%2> to be exported').
    recoveredValue29 := recoveredValue2.
    (recoveredValue29) at: ('MLm43') put: ('Distribution %1 without group char table').
    recoveredValue30 := recoveredValue2.
    (recoveredValue30) at: ('MLm44') put: ('Inconsistent interpolation on group char tables for distribution %1').
    recoveredValue31 := recoveredValue2.
    (recoveredValue31) at: ('MLm50') put: ('could not find file <%1>').
    recoveredValue32 := recoveredValue2.
    (recoveredValue32) at: ('MLm60') put: ('actual dependent parameter missing for formal parameter <%1> of element <%2>').
    recoveredValue33 := recoveredValue2.
    (recoveredValue33) at: ('MLm61') put: ('dependent parameter formula missing for element <%1>').
    recoveredValue34 := recoveredValue2.
    (recoveredValue34) at: ('MLm70') put: ('imported type <%1> and exported type <%2> different for element <%3>').
    recoveredValue35 := recoveredValue2.
    (recoveredValue35) at: ('MLm80') put: ('must not start model element "%1" with ASCET namespace prefix "%2"').
    recoveredValue36 := recoveredValue2.
    (recoveredValue36) at: ('MLm81') put: ('method name "builtInStateReset" not allowed in state machines').
    recoveredValue37 := recoveredValue2.
    (recoveredValue37) at: ('MLm90') put: ('formula named "%1" used for item <%2> not known in current project --- please create formula; hint: use "Global Formulas - Add missing" menu').
    recoveredValue38 := recoveredValue2.
    (recoveredValue38) at: ('MLm901') put: ('rescaling formula named "%1" used for item <%2> must be linear').
    recoveredValue39 := recoveredValue2.
    (recoveredValue39) at: ('MLm902') put: ('rescaling formula named "%1" used for item <%2> must have a zero offset').
    recoveredValue40 := recoveredValue2.
    (recoveredValue40) at: ('MLm903') put: ('rescaling formula named "%1" used for item <%2> must have a positive scale').
    recoveredValue41 := recoveredValue2.
    (recoveredValue41) at: ('MLm91') put: ('formula name used for item <%1> is empty --- please specify valid formula name').
    recoveredValue42 := recoveredValue2.
    (recoveredValue42) at: ('MLm92') put: ('formula named "%1" does not comply with ASAM-2MC --- please rename formula; hint: use "Extras - Global Replace Formula" menu').
    recoveredValue43 := recoveredValue2.
    (recoveredValue43) at: ('WLm1') put: ('formula in implementation for <%1> not known in current project --- using identity').
    recoveredValue44 := recoveredValue2.
    (recoveredValue44) at: ('WLm11') put: ('formula named "%1" used for item <%2> does not comply with ASAM-2MC --- please rename formula; hint: use "Extras - Global Replace Formula" menu').
    recoveredValue45 := recoveredValue2.
    (recoveredValue45) at: ('WLm10') put: ('need export for imported element <%1> with type <%2>').
    recoveredValue46 := recoveredValue2.
    (recoveredValue46) at: ('WLm20') put: ('both export <%1> and import <%2> must be of kind <%3>').
    recoveredValue47 := recoveredValue2.
    (recoveredValue47) at: ('WLm3') put: ('<%1> NOT touched because of missing write permission').
    recoveredValue48 := recoveredValue2.
    (recoveredValue48) at: ('ILm1') put: ('Ignored %1 access for element "%2" of type Module due to single instance semantics').
    (recoveredValue2) at: ('ILm2') put: ('Ignored pre/post hook specification "%1" for task "%2", since monitoring is disabled').
    ^self
! !

