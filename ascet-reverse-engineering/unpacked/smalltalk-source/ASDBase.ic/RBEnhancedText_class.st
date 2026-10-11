"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002930; bytecode file offset 0x8ffcfc"
!RBEnhancedText class methodsFor: 'recovered'!
generateConstants
    ^self
! !

"ASDBase.ic method 0x20012810; bytecode file offset 0x912098"
!RBEnhancedText class methodsFor: 'recovered'!
findReplaceMenuLabel
    | recoveredValue0 |
    recoveredValue0 := MIFindReplace.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013284; bytecode file offset 0x912098"
!RBEnhancedText class methodsFor: 'recovered'!
selectAllMenuLabel
    | recoveredValue0 |
    recoveredValue0 := MPSelectAll.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013d1c; bytecode file offset 0x912098"
!RBEnhancedText class methodsFor: 'recovered'!
copyMenuLabel
    | recoveredValue0 |
    recoveredValue0 := Copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014808; bytecode file offset 0x912098"
!RBEnhancedText class methodsFor: 'recovered'!
findReplaceKeySym
    | recoveredValue0 |
    recoveredValue0 := XKf.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001494c; bytecode file offset 0x912098"
!RBEnhancedText class methodsFor: 'recovered'!
pasteMenuLabel
    | recoveredValue0 |
    recoveredValue0 := Paste.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014ca0; bytecode file offset 0x912098"
!RBEnhancedText class methodsFor: 'recovered'!
cutMenuLabel
    | recoveredValue0 |
    recoveredValue0 := Cut.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200152e8; bytecode file offset 0x912098"
!RBEnhancedText class methodsFor: 'recovered'!
selectAllKeySym
    | recoveredValue0 |
    recoveredValue0 := XKa.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001dabc; bytecode file offset 0x92209c"
!RBEnhancedText class methodsFor: 'recovered'!
textPopupTitle
    ^'CwTextPopupMenu'
! !

"ASDBase.ic method 0x20088080; bytecode file offset 0x984bc0"
!RBEnhancedText class methodsFor: 'recovered'!
findReplaceKeyText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCCtrl.
    recoveredValue1 := (recoveredValue0) bindWith: ('F').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200880d0; bytecode file offset 0x984bc0"
!RBEnhancedText class methodsFor: 'recovered'!
cutKeyText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCCtrl.
    recoveredValue1 := (recoveredValue0) bindWith: ('X').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20088120; bytecode file offset 0x984bc0"
!RBEnhancedText class methodsFor: 'recovered'!
pasteKeyText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCCtrl.
    recoveredValue1 := (recoveredValue0) bindWith: ('V').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20088184; bytecode file offset 0x984bc0"
!RBEnhancedText class methodsFor: 'recovered'!
selectAllKeyText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCCtrl.
    recoveredValue1 := (recoveredValue0) bindWith: ('A').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200882d8; bytecode file offset 0x984bc0"
!RBEnhancedText class methodsFor: 'recovered'!
copyKeyText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCCtrl.
    recoveredValue1 := (recoveredValue0) bindWith: ('C').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2019cc34; bytecode file offset 0xa994fc"
!RBEnhancedText class methodsFor: 'recovered'!
createWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super createWidget: (recoveredValue0) parent: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := XmNmodifyVerifyCallback.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (recoveredValue6) selector: ('modifyVerifyCallback:clientData:callData:') clientData: (nil).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

