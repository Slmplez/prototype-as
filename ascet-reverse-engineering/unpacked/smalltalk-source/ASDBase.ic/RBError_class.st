"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013518; bytecode file offset 0x912098"
!RBError class methodsFor: 'recovered'!
errorController
    | recoveredValue0 |
    recoveredValue0 := GlobalErrorController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002ef14; bytecode file offset 0x934580"
!RBError class methodsFor: 'recovered'!
product
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := (recoveredValue0) product.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061be0; bytecode file offset 0x95e838"
!RBError class methodsFor: 'recovered'!
noValidSystemCompilerTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := (recoveredValue0) message: ('SysNoValidBypassTool advice: SysNoValidBypassToolAdv').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063dc4; bytecode file offset 0x961970"
!RBError class methodsFor: 'recovered'!
saveAndEmptyList
    | recoveredValue0 |
    recoveredValue0 := (self) errorController.
    (recoveredValue0) saveAndEmptyList.
    ^self
! !

"ASDBase.ic method 0x200b05d4; bytecode file offset 0x9acf28"
!RBError class methodsFor: 'recovered'!
messageBeepExclamation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := MbIconexclamation.
    (recoveredValue1) messageBeep: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b05ec; bytecode file offset 0x9acf28"
!RBError class methodsFor: 'recovered'!
messageBeepHand
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := MbIconhand.
    (recoveredValue1) messageBeep: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b0604; bytecode file offset 0x9acf28"
!RBError class methodsFor: 'recovered'!
messageBeepOk
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := MbOk.
    (recoveredValue1) messageBeep: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b061c; bytecode file offset 0x9acf28"
!RBError class methodsFor: 'recovered'!
messageBeepQuestion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := MbIconquestion.
    (recoveredValue1) messageBeep: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b0634; bytecode file offset 0x9acf28"
!RBError class methodsFor: 'recovered'!
messageBeepAsterisk
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := MbIconasterisk.
    (recoveredValue1) messageBeep: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b3a74; bytecode file offset 0x9b0488"
!RBError class methodsFor: 'recovered'!
noCompilerExecutable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := (recoveredValue0) message: ('CompNoFile') advice: ('CompNoFileAdv').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f6fbc; bytecode file offset 0x9f3ab4"
!RBError class methodsFor: 'recovered'!
noAddingDataDuringAnalysisMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NoAddingDataDuringAnalysis.
    recoveredValue2 := ChangeFromAnalysisMode.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f6ff4; bytecode file offset 0x9f3ab4"
!RBError class methodsFor: 'recovered'!
cannotRemove
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := CannotRemoveTxt.
    recoveredValue2 := ThinkTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) warning: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f702c; bytecode file offset 0x9f3ab4"
!RBError class methodsFor: 'recovered'!
warningSameBackgroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := SameBackgroundColor.
    recoveredValue2 := ChooseAnotherColor.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) warning: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f70f0; bytecode file offset 0x9f3ab4"
!RBError class methodsFor: 'recovered'!
confirmChangeXAxisExtentResetAnalysisMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := ConfirmChangeXAxisExtentResetAnalysisMode.
    recoveredValue2 := NoChangingToAnalysisModeAfterReset.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) confirm: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7128; bytecode file offset 0x9f3ab4"
!RBError class methodsFor: 'recovered'!
tryAgain
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := GeneralTxt.
    recoveredValue2 := TryAgainTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7144; bytecode file offset 0x9f3ab4"
!RBError class methodsFor: 'recovered'!
invalidDOSFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := InvalidDOSFileName.
    recoveredValue2 := TryAgainTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) error: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7160; bytecode file offset 0x9f3ab4"
!RBError class methodsFor: 'recovered'!
notInitialized
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NotInitializedTxt.
    recoveredValue2 := AskETASTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f717c; bytecode file offset 0x9f3ab4"
!RBError class methodsFor: 'recovered'!
messageSymbolicSetupOnlyForSingleVariable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := SymbolicSetupOnlyForSingleVariables.
    recoveredValue2 := SelectSingleVariable.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7198; bytecode file offset 0x9f3ab4"
!RBError class methodsFor: 'recovered'!
general
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := GeneralTxt.
    recoveredValue2 := TryAgainTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f726c; bytecode file offset 0x9f3b50"
!RBError class methodsFor: 'recovered'!
confirmChangeXAxisExtent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := ConfirmChangeXAxisExtent.
    recoveredValue2 := UserInterface.
    recoveredValue3 := (recoveredValue0) confirm: (recoveredValue1) advice: ('') context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201593e8; bytecode file offset 0xa55cb4"
!RBError class methodsFor: 'recovered'!
notSupported
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := NotSupportedTxt.
    recoveredValue2 := AskETASTxt.
    recoveredValue3 := UserInterface.
    recoveredValue4 := (recoveredValue0) message: (recoveredValue1) advice: (recoveredValue2) context: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    (self) etasDevHalt.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2018c754; bytecode file offset 0xa89020"
!RBError class methodsFor: 'recovered'!
missingItem: recoveredArg1 file: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := MissingItemTxt.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) bindWith: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := WrongPathTxt.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) bindWith: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue6) message: (recoveredValue7) advice: (recoveredValue8) context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201aaea4; bytecode file offset 0xaa7908"
!RBError class methodsFor: 'recovered'!
wantRemove: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := WantRemoveTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplateKeepStrings: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := NoTxt.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) confirmNoIsDefault: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201aaecc; bytecode file offset 0xaa7908"
!RBError class methodsFor: 'recovered'!
fileNotFound: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := FileNotFound.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := TryAgainTxt.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) error: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201aaef4; bytecode file offset 0xaa7908"
!RBError class methodsFor: 'recovered'!
lowGDIResources: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LowGDIResources.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := CloseSomeApplications.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) confirmNoIsDefault: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201aaf1c; bytecode file offset 0xaa7908"
!RBError class methodsFor: 'recovered'!
cannotAddSoManyChannels: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := NoAddingDataListOfSize.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := AddFewerChannels.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) error: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201aaf6c; bytecode file offset 0xaa7908"
!RBError class methodsFor: 'recovered'!
lowSysResources: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LowSysResources.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := CloseSomeApplications.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) confirmNoIsDefault: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201aaf94; bytecode file offset 0xaa7908"
!RBError class methodsFor: 'recovered'!
noSelectionIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := NoSelectionTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := SelectAnItemTxt.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) message: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201aafbc; bytecode file offset 0xaa7908"
!RBError class methodsFor: 'recovered'!
cannotDisplayDataInBitDisplay: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := BitDisplayCannotHoldMoreThan4Bytes.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplateKeepStrings: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := ChooseAnotherMeasureDisplayType.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) error: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201aafe4; bytecode file offset 0xaa7908"
!RBError class methodsFor: 'recovered'!
invalidDirectory: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := InvalidDirectory.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := TryAgainTxt.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) error: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ab00c; bytecode file offset 0xaa7908"
!RBError class methodsFor: 'recovered'!
inconsistentItem: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := InconsistentTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := TryAgainTxt.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) message: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ab0a0; bytecode file offset 0xaa7b7c"
!RBError class methodsFor: 'recovered'!
confirmOverwriteFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ConfirmOverwriteFile.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := UserInterface.
    recoveredValue8 := (recoveredValue5) confirmNoIsDefault: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab1b8; bytecode file offset 0xaa7b7c"
!RBError class methodsFor: 'recovered'!
confirmExchangeInvalidExtent: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := InvalidExtentBound.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplateKeepStrings: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := UserInterface.
    recoveredValue8 := (recoveredValue5) confirm: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab1e0; bytecode file offset 0xaa7b7c"
!RBError class methodsFor: 'recovered'!
emptyInputIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EmptyInput.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := UserInterface.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201b77d0; bytecode file offset 0xab40a8"
!RBError class methodsFor: 'recovered'!
fatal
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ExitTxt.
    recoveredValue1 := Array.
    recoveredValue2 := (self) product.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := GeneralTxt.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue5) error: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201d2944; bytecode file offset 0xacf2e0"
!RBError class methodsFor: 'recovered'!
wantRemove: recoveredArg1 also: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := WantRemoveAlsoTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := NoTxt.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue6) confirmNoIsDefault: (recoveredValue7) advice: (recoveredValue8) context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201d296c; bytecode file offset 0xacf2e0"
!RBError class methodsFor: 'recovered'!
invalidCharacter: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := InvalidCharacter.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := TryAgainTxt.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue6) confirm: (recoveredValue7) advice: (recoveredValue8) context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201d29bc; bytecode file offset 0xacf2e0"
!RBError class methodsFor: 'recovered'!
wantReplace: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := WantReplaceTxt.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := NoTxt.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue6) confirmNoIsDefault: (recoveredValue7) advice: (recoveredValue8) context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201d2a0c; bytecode file offset 0xacf2e0"
!RBError class methodsFor: 'recovered'!
invalidBoundsMin: recoveredArg1 max: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := InvalidMinMaxBounds.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplateKeepStrings: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := ChangeMinOrMax.
    recoveredValue9 := UserInterface.
    recoveredValue10 := (recoveredValue6) error: (recoveredValue7) advice: (recoveredValue8) context: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201d2a50; bytecode file offset 0xacf374"
!RBError class methodsFor: 'recovered'!
confirmExchangeInvalidBoundsMin: recoveredArg1 max: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := InvalidMinMaxBounds.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplateKeepStrings: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := UserInterface.
    recoveredValue9 := (recoveredValue6) confirm: (recoveredValue7) advice: ('Select <Yes> to exchange, <No> to cancel the process.') context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x204b92ec; bytecode file offset 0xdb5bc8"
!RBError class methodsFor: 'recovered'!
convertStringTemplate: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := '%'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArrayOfSubstringsSeparatedBy: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 recoveredBlock53Value8 recoveredBlock53Value9 recoveredBlock53Value10 |
    recoveredBlock53Value0 := recoveredLocal3.
    recoveredBlock53Value1 := recoveredLocal4.
    recoveredBlock53Value2 := recoveredBlock53Arg1.
    recoveredBlock53Value3 := (recoveredBlock53Value1) at: (recoveredBlock53Value2).
    recoveredBlock53Value4 := (recoveredBlock53Value0) , (recoveredBlock53Value3).
    recoveredBlock53Value5 := recoveredArg2.
    recoveredBlock53Value6 := recoveredLocal1.
    recoveredBlock53Value7 := (recoveredBlock53Value5) at: (recoveredBlock53Value6).
    recoveredBlock53Value8 := (recoveredBlock53Value7) printString.
    recoveredBlock53Value9 := (recoveredBlock53Value4) , (recoveredBlock53Value8).
    recoveredBlock53Value10 := recoveredBlock53Value9.
    recoveredLocal3 := recoveredBlock53Value10.
    recoveredBlock53Value9
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 20] ifFalse: [recoveredPC := 141]] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204b9418; bytecode file offset 0xdb5cf8"
!RBError class methodsFor: 'recovered'!
convertStringTemplateKeepStrings: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := '%'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArrayOfSubstringsSeparatedBy: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 recoveredBlock53Value8 recoveredBlock53Value9 recoveredBlock53Value10 |
    recoveredBlock53Value0 := recoveredLocal3.
    recoveredBlock53Value1 := recoveredLocal4.
    recoveredBlock53Value2 := recoveredBlock53Arg1.
    recoveredBlock53Value3 := (recoveredBlock53Value1) at: (recoveredBlock53Value2).
    recoveredBlock53Value4 := (recoveredBlock53Value0) , (recoveredBlock53Value3).
    recoveredBlock53Value5 := recoveredArg2.
    recoveredBlock53Value6 := recoveredLocal1.
    recoveredBlock53Value7 := (recoveredBlock53Value5) at: (recoveredBlock53Value6).
    recoveredBlock53Value8 := (recoveredBlock53Value7) asString.
    recoveredBlock53Value9 := (recoveredBlock53Value4) , (recoveredBlock53Value8).
    recoveredBlock53Value10 := recoveredBlock53Value9.
    recoveredLocal3 := recoveredBlock53Value10.
    recoveredBlock53Value9
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 20] ifFalse: [recoveredPC := 141]] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

