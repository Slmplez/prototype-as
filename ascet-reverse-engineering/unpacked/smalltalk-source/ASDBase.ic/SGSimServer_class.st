"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008f84; bytecode file offset 0x908be4"
!SGSimServer class methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := (self) dllName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012a14; bytecode file offset 0x912098"
!SGSimServer class methodsFor: 'recovered'!
lastL1ErrorStack
    | recoveredValue0 |
    recoveredValue0 := LastL1ErrorStack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200137a0; bytecode file offset 0x912098"
!SGSimServer class methodsFor: 'recovered'!
getAccessSemaphore
    | recoveredValue0 |
    recoveredValue0 := AccessSemaphore.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014ec8; bytecode file offset 0x912098"
!SGSimServer class methodsFor: 'recovered'!
lastL1Error
    | recoveredValue0 |
    recoveredValue0 := LastL1Error.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017a2c; bytecode file offset 0x92209c"
!SGSimServer class methodsFor: 'recovered'!
dllName
    ^'simtarg'
! !

"ASDBase.ic method 0x20053db0; bytecode file offset 0x951190"
!SGSimServer class methodsFor: 'recovered'!
setAccessSemaphore: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AccessSemaphore := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005417c; bytecode file offset 0x951190"
!SGSimServer class methodsFor: 'recovered'!
lastL1ErrorStack: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LastL1ErrorStack := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005462c; bytecode file offset 0x951190"
!SGSimServer class methodsFor: 'recovered'!
lastL1Error: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LastL1Error := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20060468; bytecode file offset 0x95cf04"
!SGSimServer class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006135c; bytecode file offset 0x95e838"
!SGSimServer class methodsFor: 'recovered'!
dllFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dllName.
    recoveredValue1 := (recoveredValue0) , ('.dll').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cd368; bytecode file offset 0x9c9c4c"
!SGSimServer class methodsFor: 'recovered'!
dllPathName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := TGTarget.
    recoveredValue1 := (recoveredValue0) dllDirectory.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := (self) dllFileName.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2015e624; bytecode file offset 0xa5aef4"
!SGSimServer class methodsFor: 'recovered'!
oldDllPathName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := EtasGeneralDllApi.
    recoveredValue2 := (recoveredValue1) getAppProgramPath.
    recoveredValue3 := (recoveredValue2) asPathname.
    recoveredValue4 := (self) dllFileName.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x204a3b84; bytecode file offset 0xda0490"
!SGSimServer class methodsFor: 'recovered'!
initializeServerErrors
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ServerErrors := recoveredValue1.
    recoveredValue2 := ServerErrors.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: (-1) put: ('Target code does not respond to L1 messages. 
Please check your network configuration.').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (-2) put: ('Link failed').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: (-9) put: ('File not found').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: (-10) put: ('Timeout Write').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (-11) put: ('Timeout Read').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: (-12) put: ('L1-Length-Check failed').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: (-13) put: ('L1-Buffer-Length exceeded').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: (-14) put: ('Wrong device or cable found at parallel port').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: (-15) put: ('No Centronics-Cable connected to parallel port').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: (-16) put: ('Device-Driver-Error').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: (-17) put: ('The Device-Driver cannot be started or stopped.
Possible reasons: No administrator rights, incomplete Windows-NT-installation').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: (-18) put: ('The Device-Driver-Registry-Entries cannot be read.
Possible reasons: Incomplete Windows-NT-installation').
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: (-19) put: ('The Board-Address in file >target.ini< is different to the Device-Driver-Registry-Entry.
The change is only accepted with administrator-rights').
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: (-20) put: ('The LPT-Number in file >target.ini< is different to the Device-Driver-Registry-Entry.
The change is only accepted with administrator-rights').
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: (-21) put: ('The Link-Speed in file >target.ini< is different to the Device-Driver-Registry-Entry.
The change is only accepted with administrator-rights').
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: (-22) put: ('A handle for the device-driver could not be created.
Either the port is in use by another application or there is no cable connected to it').
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: (-23) put: ('Link-Check failed.').
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: (-24) put: ('Unhandled exception in simulation module (simtarg.dll) occured.').
    ^self
! !

