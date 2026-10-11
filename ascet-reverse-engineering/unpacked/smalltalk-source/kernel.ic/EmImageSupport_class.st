"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200001b4; bytecode file offset 0x4b1b0"
!EmImageSupport class methodsFor: 'recovered'!
_PRAGMA_NlsCatEM
    ^self
! !

"kernel.ic method 0x200001e4; bytecode file offset 0x4b1b0"
!EmImageSupport class methodsFor: 'recovered'!
_PRAGMA_EmConstants
    ^self
! !

"kernel.ic method 0x20001778; bytecode file offset 0x4c844"
!EmImageSupport class methodsFor: 'recovered'!
sourceFilter
    | recoveredValue0 |
    recoveredValue0 := SourceFilter.
    ^recoveredValue0
! !

"kernel.ic method 0x200017cc; bytecode file offset 0x4c844"
!EmImageSupport class methodsFor: 'recovered'!
errorReporter
    | recoveredValue0 |
    recoveredValue0 := ErrorReportingDevice.
    ^recoveredValue0
! !

"kernel.ic method 0x200018d4; bytecode file offset 0x4c844"
!EmImageSupport class methodsFor: 'recovered'!
textFilter
    | recoveredValue0 |
    recoveredValue0 := TextFilter.
    ^recoveredValue0
! !

"kernel.ic method 0x200019d8; bytecode file offset 0x4c9a8"
!EmImageSupport class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('Error' 'Info' 'Warning')
! !

"kernel.ic method 0x20002dbc; bytecode file offset 0x4dce4"
!EmImageSupport class methodsFor: 'recovered'!
sourceFilter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SourceFilter := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20002dd4; bytecode file offset 0x4dce4"
!EmImageSupport class methodsFor: 'recovered'!
textFilter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    TextFilter := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200033d4; bytecode file offset 0x4e2f8"
!EmImageSupport class methodsFor: 'recovered'!
exiting
    | recoveredValue0 |
    recoveredValue0 := System.
    (recoveredValue0) logExit.
    ^self
! !

"kernel.ic method 0x20005f54; bytecode file offset 0x50e6c"
!EmImageSupport class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatEM.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20006a90; bytecode file offset 0x519a4"
!EmImageSupport class methodsFor: 'recovered'!
errorReporter: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorReporter.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    ErrorReportingDevice := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"kernel.ic method 0x20008444; bytecode file offset 0x5335c"
!EmImageSupport class methodsFor: 'recovered'!
saving
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sourceFilter.
    (recoveredValue0) initialize.
    recoveredValue1 := (self) textFilter.
    (recoveredValue1) initialize.
    ^self
! !

"kernel.ic method 0x20009c2c; bytecode file offset 0x54b4c"
!EmImageSupport class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) localize.
    recoveredValue0 := EmErrorReporter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initialize.
    (self) errorReporter: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2000ad20; bytecode file offset 0x55c40"
!EmImageSupport class methodsFor: 'recovered'!
initializeFilters
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmTextCompatibilityFilter.
    recoveredValue1 := (recoveredValue0) new.
    (self) textFilter: (recoveredValue1).
    recoveredValue2 := EmTextCompatibilityFilter.
    recoveredValue3 := (recoveredValue2) sourceFilter.
    (self) sourceFilter: (recoveredValue3).
    ^self
! !

"kernel.ic method 0x2000d560; bytecode file offset 0x58484"
!EmImageSupport class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initializeErrorReporter.
    (recoveredValue0) initializeFilters.
    recoveredValue2 := System.
    (recoveredValue2) initializeDefaults.
    recoveredValue3 := System.
    (recoveredValue3) evaluationLog: (nil).
    ^self
! !

"kernel.ic method 0x200103e4; bytecode file offset 0x5b310"
!EmImageSupport class methodsFor: 'recovered'!
initializeErrorReporter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmErrorReporter.
    recoveredValue1 := Transcript.
    (recoveredValue0) logDevice: (recoveredValue1).
    recoveredValue2 := EmErrorReporter.
    recoveredValue3 := System.
    (recoveredValue2) reportDevice: (recoveredValue3).
    recoveredValue4 := EmErrorReporter.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (recoveredValue5) initialize.
    (self) errorReporter: (recoveredValue6).
    ^self
! !

"kernel.ic method 0x20011c68; bytecode file offset 0x5cb8c"
!EmImageSupport class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) textFilter.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := EmTextCompatibilityFilter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) textFilter: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceFilter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := EmTextCompatibilityFilter.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceFilter.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) sourceFilter: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001d660; bytecode file offset 0x68594"
!EmImageSupport class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('NormalMode') inClassNamed: ('EmEvaluationRedirectionForConfigExpressions').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilClassVariable: ('PassiveMode') inClassNamed: ('EmEvaluationRedirectionForConfigExpressions').
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initializeToNilClassVariable: ('NormalMode') inClassNamed: ('EmEvaluationRedirectionForLoadedCode').
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) initializeToNilClassVariable: ('PassiveMode') inClassNamed: ('EmEvaluationRedirectionForLoadedCode').
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) initializeToNilClassVariable: ('Registry') inClassNamed: ('EmEvaluationRedirectionForLoadedCode').
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) initializeToNilClassVariable: ('ErrorReportingDevice') inClassNamed: ('EmImageSupport').
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) initializeToNilClassVariable: ('SourceFilter') inClassNamed: ('EmImageSupport').
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) initializeToNilClassVariable: ('TextFilter') inClassNamed: ('EmImageSupport').
    ^self
! !

"kernel.ic method 0x2002fda8; bytecode file offset 0x7ad4c"
!EmImageSupport class methodsFor: 'recovered'!
packagerIncludeDoitMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := EmTimeStamp.
    recoveredValue4 := (recoveredValue3) class.
    recoveredValue5 := (recoveredValue4) >> ('showVersionTimeStamps').
    (recoveredValue2) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := EmTimeStamp.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) >> ('showVersionTimeStamps:').
    (recoveredValue6) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := EmTimeStamp.
    recoveredValue12 := (recoveredValue11) class.
    recoveredValue13 := (recoveredValue12) >> ('timeZonesFromGMT').
    (recoveredValue10) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := EmTimeStamp.
    recoveredValue16 := (recoveredValue15) class.
    recoveredValue17 := (recoveredValue16) >> ('timeZonesFromGMT:').
    (recoveredValue14) add: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := EmTimeStamp.
    recoveredValue20 := (recoveredValue19) class.
    recoveredValue21 := (recoveredValue20) >> ('usingGMT').
    (recoveredValue18) add: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := EmTimeStamp.
    recoveredValue24 := (recoveredValue23) class.
    recoveredValue25 := (recoveredValue24) >> ('usingGMT:').
    (recoveredValue22) add: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := EmErrorReporter.
    recoveredValue28 := (recoveredValue27) class.
    recoveredValue29 := (recoveredValue28) >> ('displayTitle').
    (recoveredValue26) add: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := EmErrorReporter.
    recoveredValue32 := (recoveredValue31) class.
    recoveredValue33 := (recoveredValue32) >> ('displayTitle:').
    (recoveredValue30) add: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := EmErrorReporter.
    recoveredValue36 := (recoveredValue35) class.
    recoveredValue37 := (recoveredValue36) >> ('logDevice').
    (recoveredValue34) add: (recoveredValue37).
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := EmErrorReporter.
    recoveredValue40 := (recoveredValue39) class.
    recoveredValue41 := (recoveredValue40) >> ('logDevice:').
    (recoveredValue38) add: (recoveredValue41).
    recoveredValue42 := recoveredValue1.
    recoveredValue43 := EmErrorReporter.
    recoveredValue44 := (recoveredValue43) class.
    recoveredValue45 := (recoveredValue44) >> ('reportDevice').
    (recoveredValue42) add: (recoveredValue45).
    recoveredValue46 := recoveredValue1.
    recoveredValue47 := EmErrorReporter.
    recoveredValue48 := (recoveredValue47) class.
    recoveredValue49 := (recoveredValue48) >> ('reportDevice:').
    (recoveredValue46) add: (recoveredValue49).
    recoveredValue50 := recoveredValue1.
    recoveredValue51 := EmErrorReporter.
    recoveredValue52 := (recoveredValue51) class.
    recoveredValue53 := (recoveredValue52) >> ('severityCutOff').
    (recoveredValue50) add: (recoveredValue53).
    recoveredValue54 := recoveredValue1.
    recoveredValue55 := EmErrorReporter.
    recoveredValue56 := (recoveredValue55) class.
    recoveredValue57 := (recoveredValue56) >> ('severityCutOff:').
    (recoveredValue54) add: (recoveredValue57).
    recoveredValue58 := recoveredValue1.
    recoveredValue59 := EmSystemConfiguration.
    recoveredValue60 := (recoveredValue59) >> ('errorLog').
    (recoveredValue58) add: (recoveredValue60).
    recoveredValue61 := recoveredValue1.
    recoveredValue62 := EmSystemConfiguration.
    recoveredValue63 := (recoveredValue62) >> ('errorLog:').
    (recoveredValue61) add: (recoveredValue63).
    recoveredValue64 := recoveredValue1.
    recoveredValue65 := EmSystemConfiguration.
    recoveredValue66 := (recoveredValue65) >> ('evaluationLog').
    (recoveredValue64) add: (recoveredValue66).
    recoveredValue67 := recoveredValue1.
    recoveredValue68 := EmSystemConfiguration.
    recoveredValue69 := (recoveredValue68) >> ('evaluationLog:').
    (recoveredValue67) add: (recoveredValue69).
    recoveredValue70 := recoveredValue1.
    recoveredValue71 := EmSystemConfiguration.
    recoveredValue72 := (recoveredValue71) >> ('fileOutComments').
    (recoveredValue70) add: (recoveredValue72).
    recoveredValue73 := recoveredValue1.
    recoveredValue74 := EmSystemConfiguration.
    recoveredValue75 := (recoveredValue74) >> ('fileOutComments:').
    (recoveredValue73) add: (recoveredValue75).
    recoveredValue76 := recoveredValue1.
    recoveredValue77 := EmSystemConfiguration.
    recoveredValue78 := (recoveredValue77) >> ('fileOutDescriptions').
    (recoveredValue76) add: (recoveredValue78).
    recoveredValue79 := recoveredValue1.
    recoveredValue80 := EmSystemConfiguration.
    recoveredValue81 := (recoveredValue80) >> ('fileOutDescriptions:').
    (recoveredValue79) add: (recoveredValue81).
    recoveredValue82 := recoveredValue1.
    recoveredValue83 := EmSystemConfiguration.
    recoveredValue84 := (recoveredValue83) >> ('genericFormat').
    (recoveredValue82) add: (recoveredValue84).
    recoveredValue85 := recoveredValue1.
    recoveredValue86 := EmSystemConfiguration.
    recoveredValue87 := (recoveredValue86) >> ('genericFormat:').
    (recoveredValue85) add: (recoveredValue87).
    recoveredValue88 := recoveredValue1.
    recoveredValue89 := EmImageSupport.
    recoveredValue90 := (recoveredValue89) class.
    recoveredValue91 := (recoveredValue90) >> ('errorReporter').
    (recoveredValue88) add: (recoveredValue91).
    recoveredValue92 := recoveredValue1.
    recoveredValue93 := EmSystemConfiguration.
    recoveredValue94 := (recoveredValue93) >> ('fileOutCategories').
    (recoveredValue92) add: (recoveredValue94).
    recoveredValue95 := recoveredValue1.
    recoveredValue96 := EmSystemConfiguration.
    recoveredValue97 := (recoveredValue96) >> ('fileOutCategories:').
    (recoveredValue95) add: (recoveredValue97).
    recoveredValue98 := recoveredValue1.
    recoveredValue99 := EmSystemConfiguration.
    recoveredValue100 := (recoveredValue99) >> ('classChangedCallback').
    (recoveredValue98) add: (recoveredValue100).
    recoveredValue101 := recoveredValue1.
    recoveredValue102 := EmSystemConfiguration.
    recoveredValue103 := (recoveredValue102) >> ('methodChangedCallback').
    (recoveredValue101) add: (recoveredValue103).
    ^recoveredValue1
! !

