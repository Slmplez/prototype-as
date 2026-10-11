"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000050; bytecode file offset 0x3c0a8"
!EmClassDevelopment class methodsFor: 'recovered'!
_PRAGMA_NlsCatEMb
    ^self
! !

"lib.ic method 0x20000060; bytecode file offset 0x3c0a8"
!EmClassDevelopment class methodsFor: 'recovered'!
_PRAGMA_NlsCatEMbsES
    ^self
! !

"lib.ic method 0x20000634; bytecode file offset 0x3c670"
!EmClassDevelopment class methodsFor: 'recovered'!
imageBuilder
    | recoveredValue0 |
    recoveredValue0 := EmImageBuilder.
    ^recoveredValue0
! !

"lib.ic method 0x200007d4; bytecode file offset 0x3c804"
!EmClassDevelopment class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('byte' 'Deleted' 'execute' 'Extended' 'indexed' 'initialized' 'long' 'PrivatelyDefined' 'PubliclyDefined' 'word')
! !

"lib.ic method 0x2000173c; bytecode file offset 0x3d760"
!EmClassDevelopment class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"lib.ic method 0x20006844; bytecode file offset 0x42874"
!EmClassDevelopment class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := NlsCatEMb.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := NlsCatEMbsES.
    recoveredValue3 := (self) defaultMessagesLocale.
    (recoveredValue2) relocalizeTo: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20007798; bytecode file offset 0x437c8"
!EmClassDevelopment class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('NewDefinitions') inClassNamed: ('EmClassCreator').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilClassVariable: ('OrderedDefinitions') inClassNamed: ('EmClassCreator').
    ^self
! !

"lib.ic method 0x2000d1ac; bytecode file offset 0x491ec"
!EmClassDevelopment class methodsFor: 'recovered'!
packagerIncludeDoitMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Behavior.
    recoveredValue4 := (recoveredValue3) >> ('methods').
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := Behavior.
    recoveredValue7 := (recoveredValue6) >> ('publicMethods').
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := Behavior.
    recoveredValue10 := (recoveredValue9) >> ('privateMethods').
    (recoveredValue8) add: (recoveredValue10).
    ^recoveredValue1
! !

