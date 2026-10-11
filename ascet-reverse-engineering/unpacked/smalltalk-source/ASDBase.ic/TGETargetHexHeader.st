"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000600; bytecode file offset 0x8ffcfc"
!TGETargetHexHeader methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x2004ad9c; bytecode file offset 0x947768"
!TGETargetHexHeader methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b6d0; bytecode file offset 0x948384"
!TGETargetHexHeader methodsFor: 'recovered'!
codeSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c74c; bytecode file offset 0x949118"
!TGETargetHexHeader methodsFor: 'recovered'!
nextObject
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20093db4; bytecode file offset 0x990690"
!TGETargetHexHeader methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093f04; bytecode file offset 0x9907c8"
!TGETargetHexHeader methodsFor: 'recovered'!
codeSize: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (4) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093f88; bytecode file offset 0x990888"
!TGETargetHexHeader methodsFor: 'recovered'!
nextObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (8) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20410ca8; bytecode file offset 0xd0d58c"
!TGETargetHexHeader methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) space.
    (recoveredValue0) nextPut: (${).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) members.
    recoveredValue8 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            (recoveredBlock30Stack2) nextPutAll: (recoveredBlock30Stack3).
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack3 := $:.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            (recoveredBlock30Stack2) nextPut: (recoveredBlock30Stack3).
            recoveredBlock30PC := 50.
        ].
        recoveredBlock30Step = 50 ifTrue: [
            (recoveredBlock30Stack1) space.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) perform: (recoveredBlock30Stack1).
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) isString.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 64] ifFalse: [recoveredBlock30PC := 72].
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) trimNull.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg1.
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal1.
            recoveredBlock30PC := 79.
        ].
        recoveredBlock30Step = 79 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) printString.
            recoveredBlock30PC := 81.
        ].
        recoveredBlock30Step = 81 ifTrue: [
            (recoveredBlock30Stack1) nextPutAll: (recoveredBlock30Stack2).
            recoveredBlock30PC := 83.
        ].
        recoveredBlock30Step = 83 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) cr.
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 85 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack0.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPut: ($}).
    ^self
! !

