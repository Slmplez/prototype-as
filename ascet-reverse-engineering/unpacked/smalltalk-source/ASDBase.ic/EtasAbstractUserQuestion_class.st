"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bd38; bytecode file offset 0x908be4"
!EtasAbstractUserQuestion class methodsFor: 'recovered'!
defaultPrompterClass
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202f36bc; bytecode file offset 0xbeffd8"
!EtasAbstractUserQuestion class methodsFor: 'recovered'!
buttonStyles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('OK').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('OKCANCEL').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('CANCELOK').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: ('YESCANCEL').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: ('YESNO').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: ('NOYES').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) add: ('YESNOCANCEL').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) add: ('YES1YES2NOCANCEL').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) add: ('YESALWAYSNOCANCEL').
    ^recoveredValue1
! !

