"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200037f8; bytecode file offset 0x90206c"
!SGMissingPortGO methodsFor: 'recovered'!
prepareForReplaceWith: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d404; bytecode file offset 0x909e08"
!SGMissingPortGO methodsFor: 'recovered'!
isConsistentForSGClass: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2007495c; bytecode file offset 0x9757c8"
!SGMissingPortGO methodsFor: 'recovered'!
isMissingPort
    ^true
! !

"ASDBase.ic method 0x2007c914; bytecode file offset 0x97c330"
!SGMissingPortGO methodsFor: 'recovered'!
connNamesVisible
    ^false
! !

"ASDBase.ic method 0x203d9af0; bytecode file offset 0xcd63d8"
!SGMissingPortGO methodsFor: 'recovered'!
removeUnconnectedRedPinsTableBuilder: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) table.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) interfaceGOs.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) identifier.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack3 := [].
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) ifAbsent: (recoveredBlock18Stack3).
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack1.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal3.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack1 == nil) ifTrue: [recoveredBlock18PC := 68] ifFalse: [recoveredBlock18PC := 44].
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal3.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) connectionPoint.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) connections.
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isEmpty.
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 58] ifFalse: [recoveredBlock18PC := 65].
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18PC := 59.
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 68 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 72.
        ].
        recoveredBlock18Step = 72 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) interfaceGOs.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) removeAll: (recoveredValue7).
    ^self
! !

