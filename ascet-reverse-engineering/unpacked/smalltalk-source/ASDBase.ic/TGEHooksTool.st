"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002e4c4; bytecode file offset 0x934580"
!TGEHooksTool methodsFor: 'recovered'!
toolChainDriverFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) toolChainDriverFilename.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036334; bytecode file offset 0x934580"
!TGEHooksTool methodsFor: 'recovered'!
toolChainDriverDummyRootPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) toolChainDriverDummyRootPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056388; bytecode file offset 0x952c58"
!TGEHooksTool methodsFor: 'recovered'!
logDisconnectingEnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x2008beb0; bytecode file offset 0x9887bc"
!TGEHooksTool methodsFor: 'recovered'!
supportLocalElements
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('supportsLocalElements') default: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008bed0; bytecode file offset 0x9887bc"
!TGEHooksTool methodsFor: 'recovered'!
supportsPasswordPathname
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('supportsPasswordFile') default: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d9c0; bytecode file offset 0x99a2e4"
!TGEHooksTool methodsFor: 'recovered'!
clientName
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('clientName') default: ('').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a17d4; bytecode file offset 0x99e094"
!TGEHooksTool methodsFor: 'recovered'!
appServerVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) subStrings: ($V).
    recoveredValue2 := (recoveredValue1) last.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab144; bytecode file offset 0x9a7a20"
!TGEHooksTool methodsFor: 'recovered'!
compareServerVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) appServerVersion.
    recoveredValue1 := (recoveredValue0) , ('*').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) match: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e1f74; bytecode file offset 0x9de890"
!TGEHooksTool methodsFor: 'recovered'!
templateFilename
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) identifier.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('bypass_func_') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('.template').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e99b8; bytecode file offset 0x9e62c8"
!TGEHooksTool methodsFor: 'recovered'!
logServerClosed: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) logServer: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' closed').
    ^self
! !

"ASDBase.ic method 0x200f2208; bytecode file offset 0x9eead0"
!TGEHooksTool methodsFor: 'recovered'!
supportsOptionsDialog
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) identifier.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) toolIdentifierV31.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    recoveredValue4 := (self) getAttributeValue: ('supportsOptionsDialog') default: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f8fe8; bytecode file offset 0x9f58b0"
!TGEHooksTool methodsFor: 'recovered'!
appServerLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) subStrings: ($.).
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := (recoveredValue2) , ('.x').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fcc84; bytecode file offset 0x9f9548"
!TGEHooksTool methodsFor: 'recovered'!
logServer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) label.
    (recoveredValue1) newlinePutAll: (recoveredValue2).
    (recoveredValue0) nextPutAll: (' automation server').
    ^self
! !

"ASDBase.ic method 0x201077f0; bytecode file offset 0xa040b8"
!TGEHooksTool methodsFor: 'recovered'!
supportsPhysicalController
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) identifier.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) toolIdentifierV2.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    recoveredValue4 := (recoveredValue3) not.
    recoveredValue5 := (self) getAttributeValue: ('supportsPhysicalController') default: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20197180; bytecode file offset 0xa93a64"
!TGEHooksTool methodsFor: 'recovered'!
logScriptingQuit: recoveredArg1 configuration: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('quit configuration').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: (' with path = "').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue0) nextPutAll: ('"').
    ^self
! !

"ASDBase.ic method 0x201dcb3c; bytecode file offset 0xad9418"
!TGEHooksTool methodsFor: 'recovered'!
logDoesNotMatch: recoveredArg1 value: recoveredArg2 expectedValue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: (' does not match:  "').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: ('" !!= "').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    (recoveredValue0) nextPutAll: ('"').
    ^self
! !

