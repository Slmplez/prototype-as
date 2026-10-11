"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20003140; bytecode file offset 0x3f16c"
!EmClassDefinitionDescriptor class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (Array new: 32) at: 1 put: ($ ); at: 2 put: ($,); at: 3 put: ($<); at: 4 put: ($.); at: 5 put: ($>); at: 6 put: ($/); at: 7 put: ($?); at: 8 put: ($;); at: 9 put: ($:); at: 10 put: ($'); at: 11 put: ($"); at: 12 put: ($[); at: 13 put: (${); at: 14 put: ($]); at: 15 put: ($}); at: 16 put: ($\); at: 17 put: ($|); at: 18 put: ($`); at: 19 put: ($~); at: 20 put: ($!!); at: 21 put: ($@); at: 22 put: ($#); at: 23 put: ($$); at: 24 put: ($%); at: 25 put: ($^); at: 26 put: ($&); at: 27 put: ($*); at: 28 put: ($(); at: 29 put: ($)); at: 30 put: ($-); at: 31 put: ($=); at: 32 put: ($+); yourself.
    recoveredValue1 := (recoveredValue0) asSet.
    InvalidCharacters := recoveredValue1.
    ^self
! !

"lib.ic method 0x2000a7c8; bytecode file offset 0x467f4"
!EmClassDefinitionDescriptor class methodsFor: 'recovered'!
named: recoveredArg1 in: recoveredArg2 for: recoveredArg3 subclassOf: recoveredArg4 instanceShape: recoveredArg5 classInstanceVariables: recoveredArg6 instanceVariables: recoveredArg7 classVariables: recoveredArg8 sharedPoolNames: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) requestedChange: (true).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    recoveredValue9 := recoveredArg8.
    recoveredValue10 := recoveredArg9.
    recoveredValue11 := (recoveredValue0) named: (recoveredValue2) in: (recoveredValue3) for: (recoveredValue4) subclassOf: (recoveredValue5) instanceShape: (recoveredValue6) classInstanceVariables: (recoveredValue7) instanceVariables: (recoveredValue8) classVariables: (recoveredValue9) sharedPoolNames: (recoveredValue10).
    ^recoveredValue11
! !

"lib.ic method 0x2000ea30; bytecode file offset 0x4aa78"
!EmClassDefinitionDescriptor class methodsFor: 'recovered'!
copy: recoveredArg1 in: recoveredArg2 for: recoveredArg3 subclassOf: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) requestedChange: (false).
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) existingClass: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) environmentKey.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) instanceShape.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) class.
    recoveredValue13 := (recoveredValue12) instVarNames.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) instVarNames.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) classVarNames.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) sharedPoolNames.
    recoveredValue20 := (recoveredValue0) named: (recoveredValue5) in: (recoveredValue6) for: (recoveredValue7) subclassOf: (recoveredValue8) instanceShape: (recoveredValue10) classInstanceVariables: (recoveredValue13) instanceVariables: (recoveredValue15) classVariables: (recoveredValue17) sharedPoolNames: (recoveredValue19).
    ^recoveredValue20
! !

