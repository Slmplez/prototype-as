"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200f7010; bytecode file offset 0x9f3ab4"
!RBSystemError class methodsFor: 'recovered'!
tooManyFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := TooManyFontsTxt.
    recoveredValue2 := DeleteFontsTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f70b8; bytecode file offset 0x9f3ab4"
!RBSystemError class methodsFor: 'recovered'!
directoryExists
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := DirectoryExistsTxt.
    recoveredValue2 := TryAgainTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f70d4; bytecode file offset 0x9f3ab4"
!RBSystemError class methodsFor: 'recovered'!
noPrinter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoPrinterTxt.
    recoveredValue2 := ConnectPrinterTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f859c; bytecode file offset 0x9f4e64"
!RBSystemError class methodsFor: 'recovered'!
fileEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := UserInterface.
    recoveredValue2 := (recoveredValue0) message: ('file empty') advice: ('check with a text editor') context: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ffab4; bytecode file offset 0x9fc37c"
!RBSystemError class methodsFor: 'recovered'!
cfsError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue2) advice: ('check it out...') context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201aae7c; bytecode file offset 0xaa7908"
!RBSystemError class methodsFor: 'recovered'!
printerNotConnected: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := PrinterNotConnected.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := ConnectPrinterPhysically.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) error: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201df7c0; bytecode file offset 0xadc0c4"
!RBSystemError class methodsFor: 'recovered'!
cfsOpenError: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := CfsOpenError.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) errorController.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue7) error: (recoveredValue8) advice: ('') context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201df7ec; bytecode file offset 0xadc0c4"
!RBSystemError class methodsFor: 'recovered'!
cfsRemoveError: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := CfsRemoveError.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) errorController.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue7) error: (recoveredValue8) advice: ('') context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201df834; bytecode file offset 0xadc10c"
!RBSystemError class methodsFor: 'recovered'!
noFile: recoveredArg1 inDir: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := NoFileTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) doubleBackslashes.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) errorController.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue7) error: (recoveredValue8) advice: ('') context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201fb7a8; bytecode file offset 0xaf8080"
!RBSystemError class methodsFor: 'recovered'!
cfsRenameError: recoveredArg1 fileName: recoveredArg2 new: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := CfsRenameError.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := (self) errorController.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := UserInterface.
    recoveredValue11 := (recoveredValue8) error: (recoveredValue9) advice: ('') context: (recoveredValue10).
    ^recoveredValue11
! !

