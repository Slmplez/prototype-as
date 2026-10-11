"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200f7218; bytecode file offset 0x9f3b50"
!RBOnlineDLLError class methodsFor: 'recovered'!
couldntChangeToAnalysisMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := CouldntChangeToAnalysisMode.
    recoveredValue2 := OnlineDLL.
    recoveredValue3 := (recoveredValue0) error: (recoveredValue1) advice: ('') context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f7250; bytecode file offset 0x9f3b50"
!RBOnlineDLLError class methodsFor: 'recovered'!
couldntChangeToOfflineMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := CouldntChangeToOfflineMode.
    recoveredValue2 := OnlineDLL.
    recoveredValue3 := (recoveredValue0) error: (recoveredValue1) advice: ('') context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20169340; bytecode file offset 0xa65c0c"
!RBOnlineDLLError class methodsFor: 'recovered'!
internalError: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := OnlineDLL.
    recoveredValue3 := (recoveredValue2) , (': ').
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (recoveredValue0) error: (recoveredValue1) advice: ('') context: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201ab034; bytecode file offset 0xaa7908"
!RBOnlineDLLError class methodsFor: 'recovered'!
wrongTriggerConditionString: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := WrongTriggerConditionString.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := CheckTriggerCondition.
    recoveredValue8 := OnlineDLL.
    recoveredValue9 := (recoveredValue5) error: (recoveredValue6) advice: (recoveredValue7) context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ab078; bytecode file offset 0xaa7b7c"
!RBOnlineDLLError class methodsFor: 'recovered'!
couldntCreateTimeChannel: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CouldntCreateTimeChannel.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := OnlineDLL.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab0c8; bytecode file offset 0xaa7b7c"
!RBOnlineDLLError class methodsFor: 'recovered'!
tooManyDisplayChannels: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := TooManyDLLDisplayChannels.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := OnlineDLL.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab0f0; bytecode file offset 0xaa7b7c"
!RBOnlineDLLError class methodsFor: 'recovered'!
couldntCreateChannelGroup: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CouldntCreateChannelGroup.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := OnlineDLL.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab118; bytecode file offset 0xaa7b7c"
!RBOnlineDLLError class methodsFor: 'recovered'!
tooManyWindows: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := TooManyDLLWindows.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := OnlineDLL.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab140; bytecode file offset 0xaa7b7c"
!RBOnlineDLLError class methodsFor: 'recovered'!
couldntCreateDataCurve: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CouldntCreateDataCurve.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := OnlineDLL.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab190; bytecode file offset 0xaa7b7c"
!RBOnlineDLLError class methodsFor: 'recovered'!
tooManyDataChannels: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := TooManyDLLDataChannels.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := OnlineDLL.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab230; bytecode file offset 0xaa7b7c"
!RBOnlineDLLError class methodsFor: 'recovered'!
tooManyCurves: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := TooManyDLLCurves.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := OnlineDLL.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab258; bytecode file offset 0xaa7b7c"
!RBOnlineDLLError class methodsFor: 'recovered'!
couldntCreateDisplayChannel: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CouldntCreateDisplayChannel.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := OnlineDLL.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab2a8; bytecode file offset 0xaa7b7c"
!RBOnlineDLLError class methodsFor: 'recovered'!
couldntCreateDataChannel: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CouldntCreateDataChannel.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) errorController.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := OnlineDLL.
    recoveredValue8 := (recoveredValue5) error: (recoveredValue6) advice: ('') context: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d2a78; bytecode file offset 0xacf374"
!RBOnlineDLLError class methodsFor: 'recovered'!
couldntCreateDisplayChannel: recoveredArg1 bitPosition: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CouldntCreateBitDisplayChannel.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := OnlineDLL.
    recoveredValue9 := (recoveredValue6) error: (recoveredValue7) advice: ('') context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201d2aa0; bytecode file offset 0xacf374"
!RBOnlineDLLError class methodsFor: 'recovered'!
invalidGroupId: recoveredArg1 maxId: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := InvalidDLLGroupId.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) errorController.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := OnlineDLL.
    recoveredValue9 := (recoveredValue6) error: (recoveredValue7) advice: ('') context: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ee9a0; bytecode file offset 0xaeb274"
!RBOnlineDLLError class methodsFor: 'recovered'!
wrongVersion: recoveredArg1 ofFile: recoveredArg2 correctVersion: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := WrongVersion.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) convertStringTemplate: (recoveredValue0) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) errorController.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := GetActualVersion.
    recoveredValue10 := OnlineDLL.
    recoveredValue11 := (recoveredValue7) error: (recoveredValue8) advice: (recoveredValue9) context: (recoveredValue10).
    ^recoveredValue11
! !

