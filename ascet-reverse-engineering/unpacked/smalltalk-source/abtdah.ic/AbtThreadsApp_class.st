"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000028; bytecode file offset 0x10088"
!AbtThreadsApp class methodsFor: 'recovered'!
_PRAGMA_AbtMsgThreads
    ^self
! !

"abtdah.ic method 0x20000494; bytecode file offset 0x104e4"
!AbtThreadsApp class methodsFor: 'recovered'!
packagerKnownSymbols
    | recoveredValue0 |
    recoveredValue0 := (Notification new: 0) instVarAt: 1 put: ('CwAppContext'); yourself.
    ^recoveredValue0
! !

"abtdah.ic method 0x200007cc; bytecode file offset 0x1081c"
!AbtThreadsApp class methodsFor: 'recovered'!
removing
    (self) abtUnregisterExternalStrings.
    ^self
! !

"abtdah.ic method 0x200007f0; bytecode file offset 0x1081c"
!AbtThreadsApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"abtdah.ic method 0x2000095c; bytecode file offset 0x1098c"
!AbtThreadsApp class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := (Smalltalk at: #'!!CATALOGNAME' ifAbsent: [nil]).
    (recoveredValue0) abtStartUp.
    ^self
! !

"abtdah.ic method 0x20001f34; bytecode file offset 0x11f68"
!AbtThreadsApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ExceptionalEvent.
    recoveredValue1 := (recoveredValue0) with: ('abtth?40') with: (false) with: (true).
    ^recoveredValue1
! !

"abtdah.ic method 0x20002d88; bytecode file offset 0x12dc0"
!AbtThreadsApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    (self) abtRegisterExternalStrings.
    recoveredValue0 := AbtHeapObject.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) fixedSize: (1).
    (recoveredValue0) startUp.
    (self) startUp.
    ^self
! !

