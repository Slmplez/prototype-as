"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetCommon.ic method 0x2000016c; bytecode file offset 0xf168"
!TGRtaBasedExperimentalTarget class methodsFor: 'recovered'!
oilGeneratorClass
    | recoveredValue0 |
    recoveredValue0 := EtasOilGenerator.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x200008b0; bytecode file offset 0xf948"
!TGRtaBasedExperimentalTarget class methodsFor: 'recovered'!
isAbstract
    ^true
! !

"ETargetCommon.ic method 0x20000918; bytecode file offset 0xf948"
!TGRtaBasedExperimentalTarget class methodsFor: 'recovered'!
supportsRTA
    ^true
! !

"ETargetCommon.ic method 0x200009b0; bytecode file offset 0xf9b0"
!TGRtaBasedExperimentalTarget class methodsFor: 'recovered'!
coopLevels
    ^32
! !

"ETargetCommon.ic method 0x200009b8; bytecode file offset 0xf9b0"
!TGRtaBasedExperimentalTarget class methodsFor: 'recovered'!
preempLevels
    ^32
! !

"ETargetCommon.ic method 0x20000d70; bytecode file offset 0xfd7c"
!TGRtaBasedExperimentalTarget class methodsFor: 'recovered'!
defaultOSTools
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := TGOperatingSystemTool.
    recoveredValue2 := (recoveredValue1) selectedTool: ('RTA/RTA5').
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ETargetCommon.ic method 0x20002ed0; bytecode file offset 0x11efc"
!TGRtaBasedExperimentalTarget class methodsFor: 'recovered'!
events
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := TGTargetEvent.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := '0x'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := (recoveredStack6) asHexString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack4) name: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack4) minPrio: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := 32.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack4) maxPrio: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack4) id: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 60]] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

