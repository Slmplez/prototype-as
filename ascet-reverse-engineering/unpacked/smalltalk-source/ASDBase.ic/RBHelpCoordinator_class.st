"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014550; bytecode file offset 0x912098"
!RBHelpCoordinator class methodsFor: 'recovered'!
f1PressHandling
    | recoveredValue0 |
    recoveredValue0 := F1PressHandling.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001abd0; bytecode file offset 0x92209c"
!RBHelpCoordinator class methodsFor: 'recovered'!
helpFileSectionString
    ^'HelpFiles'
! !

"ASDBase.ic method 0x2001c6c4; bytecode file offset 0x92209c"
!RBHelpCoordinator class methodsFor: 'recovered'!
widgetIdSeparator
    ^';'
! !

"ASDBase.ic method 0x2001cd18; bytecode file offset 0x92209c"
!RBHelpCoordinator class methodsFor: 'recovered'!
defaultString
    ^'<default>'
! !

"ASDBase.ic method 0x200205dc; bytecode file offset 0x92209c"
!RBHelpCoordinator class methodsFor: 'recovered'!
mapExtension
    ^'map'
! !

"ASDBase.ic method 0x200213e0; bytecode file offset 0x92209c"
!RBHelpCoordinator class methodsFor: 'recovered'!
helpFileEntryString
    ^'File'
! !

"ASDBase.ic method 0x20025ffc; bytecode file offset 0x923928"
!RBHelpCoordinator class methodsFor: 'recovered'!
offsetString
    ^'HelpMapFileOffset'
! !

"ASDBase.ic method 0x20054554; bytecode file offset 0x951190"
!RBHelpCoordinator class methodsFor: 'recovered'!
f1PressHandling: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    F1PressHandling := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20060d2c; bytecode file offset 0x95d978"
!RBHelpCoordinator class methodsFor: 'recovered'!
widgetNameF1Handling
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) f1PressHandling.
    recoveredValue1 := (recoveredValue0) = ('widgetName').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060d8c; bytecode file offset 0x95d978"
!RBHelpCoordinator class methodsFor: 'recovered'!
helpTextF1Handling
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) f1PressHandling.
    recoveredValue1 := (recoveredValue0) = ('helpText').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006108c; bytecode file offset 0x95d978"
!RBHelpCoordinator class methodsFor: 'recovered'!
widgetListF1Handling
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) f1PressHandling.
    recoveredValue1 := (recoveredValue0) = ('widgetList').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c4bc; bytecode file offset 0x989498"
!RBHelpCoordinator class methodsFor: 'recovered'!
setWidgetNameF1Handling
    (self) f1PressHandling: ('widgetName').
    ^self
! !

"ASDBase.ic method 0x2008c80c; bytecode file offset 0x989498"
!RBHelpCoordinator class methodsFor: 'recovered'!
setHelpTextF1Handling
    (self) f1PressHandling: ('helpText').
    ^self
! !

"ASDBase.ic method 0x2008cb6c; bytecode file offset 0x989498"
!RBHelpCoordinator class methodsFor: 'recovered'!
setWidgetListF1Handling
    (self) f1PressHandling: ('widgetList').
    ^self
! !

"ASDBase.ic method 0x20091268; bytecode file offset 0x98de70"
!RBHelpCoordinator class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201a9948; bytecode file offset 0xaa6214"
!RBHelpCoordinator class methodsFor: 'recovered'!
createOnHelpPath: recoveredArg1 productString: recoveredArg2 languageString: recoveredArg3 fileExtension: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) helpPath: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) productString: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) languageString: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) fileExtension: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) initHelpMapFile.
    ^recoveredValue0
! !

