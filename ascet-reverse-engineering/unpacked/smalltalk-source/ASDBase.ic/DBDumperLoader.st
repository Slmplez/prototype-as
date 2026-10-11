"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005d908; bytecode file offset 0x95a1e4"
!DBDumperLoader methodsFor: 'recovered'!
clearClassReplacement
    | recoveredValue0 |
    recoveredValue0 := dumper.
    (recoveredValue0) clearClassReplacement.
    ^self
! !

"ASDBase.ic method 0x2005d914; bytecode file offset 0x95a1e4"
!DBDumperLoader methodsFor: 'recovered'!
setClassReplacement
    | recoveredValue0 |
    recoveredValue0 := dumper.
    (recoveredValue0) setClassReplacement.
    ^self
! !

"ASDBase.ic method 0x2006697c; bytecode file offset 0x963428"
!DBDumperLoader methodsFor: 'recovered'!
bytes
    | recoveredValue0 |
    recoveredValue0 := bytes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067c0c; bytecode file offset 0x9646f8"
!DBDumperLoader methodsFor: 'recovered'!
linkObject
    | recoveredValue0 |
    recoveredValue0 := linkObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200693d8; bytecode file offset 0x966bdc"
!DBDumperLoader methodsFor: 'recovered'!
dumper
    | recoveredValue0 |
    recoveredValue0 := dumper.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006afbc; bytecode file offset 0x967a18"
!DBDumperLoader methodsFor: 'recovered'!
loader
    | recoveredValue0 |
    recoveredValue0 := loader.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200822c0; bytecode file offset 0x97ebfc"
!DBDumperLoader methodsFor: 'recovered'!
loadFromPathName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := loader.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) loadFromPathName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e108; bytecode file offset 0x99a9c4"
!DBDumperLoader methodsFor: 'recovered'!
cleanupInstances
    bytes := nil.
    linkObject := nil.
    ^self
! !

"ASDBase.ic method 0x200ce40c; bytecode file offset 0x9cadc8"
!DBDumperLoader methodsFor: 'recovered'!
clearLoading
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (65533).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce45c; bytecode file offset 0x9cadc8"
!DBDumperLoader methodsFor: 'recovered'!
clearDumping
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (65534).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce54c; bytecode file offset 0x9cae10"
!DBDumperLoader methodsFor: 'recovered'!
setDumping
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce5b0; bytecode file offset 0x9cae68"
!DBDumperLoader methodsFor: 'recovered'!
isDumping
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce5d8; bytecode file offset 0x9cae90"
!DBDumperLoader methodsFor: 'recovered'!
setLoading
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce60c; bytecode file offset 0x9caedc"
!DBDumperLoader methodsFor: 'recovered'!
isLoading
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce640; bytecode file offset 0x9caef8"
!DBDumperLoader methodsFor: 'recovered'!
isWorking
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (3).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014a768; bytecode file offset 0xa47028"
!DBDumperLoader methodsFor: 'recovered'!
getNewlyLoadedObjectsOfClass: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := loader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNewlyLoadedObjectsOfClass: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

