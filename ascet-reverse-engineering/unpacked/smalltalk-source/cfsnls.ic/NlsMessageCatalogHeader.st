"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000400; bytecode file offset 0x23638"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
intelLongAt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000670; bytecode file offset 0x238b8"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
intelLongAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001250; bytecode file offset 0x24490"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
platform
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001270; bytecode file offset 0x244a4"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) intelLongAt: (3).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200012d0; bytecode file offset 0x24504"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
indexOffset
    | recoveredValue0 |
    recoveredValue0 := (self) intelLongAt: (7).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002bb8; bytecode file offset 0x25df4"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
isCrossloading
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) platformID.
    recoveredValue3 := (recoveredValue0) ~= (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x20002ddc; bytecode file offset 0x26010"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
platform: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (2) put: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20002df4; bytecode file offset 0x26028"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) intelLongAt: (3) put: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x200034b8; bytecode file offset 0x266ec"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
indexOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) intelLongAt: (7) put: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20005104; bytecode file offset 0x28348"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) platformID.
    (self) platform: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) currentVersion.
    (self) version: (recoveredValue3).
    ^self
! !

"cfsnls.ic method 0x20007c1c; bytecode file offset 0x2ae64"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
isValid
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := KnownVersions.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) version.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) includes: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOffset.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOffset.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedSize.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20007d78; bytecode file offset 0x2afc0"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
platformID
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) platforms.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 'UNKNOWN'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) platforms.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000a940; bytecode file offset 0x2dbac"
!NlsMessageCatalogHeader methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('an %1 (\  IndexOffset: %2\  Version: %3\  Platform: %4\  PlatformId: %5') addLineDelimiters.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) name.
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := (self) indexOffset.
    recoveredValue9 := (recoveredValue8) printString.
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := (self) version.
    recoveredValue12 := (recoveredValue11) printStringRadix: (16) padTo: (4).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue3.
    recoveredValue14 := (self) platform.
    recoveredValue15 := recoveredValue14.
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := (recoveredValue14) printString.
    (recoveredValue13) add: (recoveredValue16).
    recoveredValue17 := recoveredValue3.
    recoveredValue18 := (self) class.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue18) platformDescriptionFromID: (recoveredValue19).
    (recoveredValue17) add: (recoveredValue20).
    recoveredValue21 := (recoveredValue1) bindWithArguments: (recoveredValue3).
    (recoveredValue0) nextPutAll: (recoveredValue21).
    ^self
! !

