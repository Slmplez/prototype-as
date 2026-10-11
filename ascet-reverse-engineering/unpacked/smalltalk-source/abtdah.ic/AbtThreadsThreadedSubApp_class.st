"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200008ec; bytecode file offset 0x1098c"
!AbtThreadsThreadedSubApp class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := AbtHeapObject.
    (recoveredValue0) startUp.
    ^self
! !

"abtdah.ic method 0x200008fc; bytecode file offset 0x1098c"
!AbtThreadsThreadedSubApp class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := AbtThreadManager.
    (recoveredValue0) preStartUp.
    ^self
! !

"abtdah.ic method 0x2000092c; bytecode file offset 0x1098c"
!AbtThreadsThreadedSubApp class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := AbtThreadManager.
    (recoveredValue0) saving.
    ^self
! !

"abtdah.ic method 0x20001958; bytecode file offset 0x1198c"
!AbtThreadsThreadedSubApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('Default') inClassNamed: ('AbtThreadManager').
    ^self
! !

