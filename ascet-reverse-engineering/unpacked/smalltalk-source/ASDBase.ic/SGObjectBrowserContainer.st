"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006a94; bytecode file offset 0x908be4"
!SGObjectBrowserContainer methodsFor: 'recovered'!
masterItem
    | recoveredValue0 |
    recoveredValue0 := (self) item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e118; bytecode file offset 0x90ab8c"
!SGObjectBrowserContainer methodsFor: 'recovered'!
itemIfUndefined: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20030e84; bytecode file offset 0x934580"
!SGObjectBrowserContainer methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := (recoveredValue0) label.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e33c; bytecode file offset 0x94d048"
!SGObjectBrowserContainer methodsFor: 'recovered'!
item
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053ac0; bytecode file offset 0x9505d0"
!SGObjectBrowserContainer methodsFor: 'recovered'!
containsElement: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200669bc; bytecode file offset 0x963428"
!SGObjectBrowserContainer methodsFor: 'recovered'!
contents
    | recoveredValue0 |
    recoveredValue0 := contents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007732c; bytecode file offset 0x9757c8"
!SGObjectBrowserContainer methodsFor: 'recovered'!
containerIsValid
    ^true
! !

"ASDBase.ic method 0x200be104; bytecode file offset 0x9bb178"
!SGObjectBrowserContainer methodsFor: 'recovered'!
contents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contents := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fad20; bytecode file offset 0x9f75dc"
!SGObjectBrowserContainer methodsFor: 'recovered'!
getLibrary
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^nil
].
    recoveredValue1 := (self) itemIfUndefined: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) getLibrary.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e5260; bytecode file offset 0xae1b34"
!SGObjectBrowserContainer methodsFor: 'recovered'!
iconName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Rnz') == ('ASCET_SCM').
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) iconName.
    ^recoveredBlock10Value1
].
    recoveredValue2 := (self) itemIfUndefined: (recoveredValue1).
    recoveredValue3 := RBUserInterface.
    recoveredValue4 := (recoveredValue3) resourceManager.
    recoveredValue5 := (recoveredValue2) getIcon: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) name.
    ^recoveredValue6
! !

