"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009434; bytecode file offset 0x908be4"
!AbtMRI methodsFor: 'recovered'!
asString
    | recoveredValue0 |
    recoveredValue0 := (self) string.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20057958; bytecode file offset 0x956284"
!AbtMRI methodsFor: 'recovered'!
stringWithoutMnemonic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) string.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) abtWithoutMnemonic: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006684c; bytecode file offset 0x963428"
!AbtMRI methodsFor: 'recovered'!
group
    | recoveredValue0 |
    recoveredValue0 := groupName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066d2c; bytecode file offset 0x9646f8"
!AbtMRI methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200683d4; bytecode file offset 0x965b90"
!AbtMRI methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069fe8; bytecode file offset 0x966bdc"
!AbtMRI methodsFor: 'recovered'!
string
    | recoveredValue0 |
    recoveredValue0 := string.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007754c; bytecode file offset 0x9757c8"
!AbtMRI methodsFor: 'recovered'!
isMRI
    ^true
! !

"ASDBase.ic method 0x2008fc74; bytecode file offset 0x98c52c"
!AbtMRI methodsFor: 'recovered'!
isQuestion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ($q).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008fd04; bytecode file offset 0x98c5bc"
!AbtMRI methodsFor: 'recovered'!
isError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ($e).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008fd4c; bytecode file offset 0x98c604"
!AbtMRI methodsFor: 'recovered'!
isWarning
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ($w).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008fdac; bytecode file offset 0x98c664"
!AbtMRI methodsFor: 'recovered'!
isInformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ($i).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009224c; bytecode file offset 0x98ebfc"
!AbtMRI methodsFor: 'recovered'!
logWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (self) logReplace: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009229c; bytecode file offset 0x98ebfc"
!AbtMRI methodsFor: 'recovered'!
stringLogWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (self) stringLogReplace: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20092300; bytecode file offset 0x98ebfc"
!AbtMRI methodsFor: 'recovered'!
displayWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (self) displayReplace: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20093960; bytecode file offset 0x9904ac"
!AbtMRI methodsFor: 'recovered'!
displayButtonType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) string.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) displaySimpleString: (recoveredValue0) buttonType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200955f8; bytecode file offset 0x991fb4"
!AbtMRI methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) string.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20099d18; bytecode file offset 0x997194"
!AbtMRI methodsFor: 'recovered'!
mnemonic: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) string.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) abtMnemonic: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009bb70; bytecode file offset 0x998444"
!AbtMRI methodsFor: 'recovered'!
stringLog
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtPrimitiveLoggingSupport.
    recoveredValue1 := (self) string.
    (recoveredValue0) logError: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a1ddc; bytecode file offset 0x99e6ec"
!AbtMRI methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) id.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) group.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a5914; bytecode file offset 0x9a23f0"
!AbtMRI methodsFor: 'recovered'!
messageHelpBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) messageHelpBlockSelector.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) perform: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b424c; bytecode file offset 0x9b0bd0"
!AbtMRI methodsFor: 'recovered'!
asAnnotatedString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) asString.
    recoveredValue2 := (self) displayableId.
    recoveredValue3 := (recoveredValue0) string: (recoveredValue1) withAnnotation: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bdc5c; bytecode file offset 0x9bb178"
!AbtMRI methodsFor: 'recovered'!
primGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    groupName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf2b8; bytecode file offset 0x9bc0b4"
!AbtMRI methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c002c; bytecode file offset 0x9bd228"
!AbtMRI methodsFor: 'recovered'!
primType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c15d8; bytecode file offset 0x9bdf14"
!AbtMRI methodsFor: 'recovered'!
string: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    string := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7c78; bytecode file offset 0x9c4588"
!AbtMRI methodsFor: 'recovered'!
stringLogWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) stringLogReplace: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c7c8c; bytecode file offset 0x9c4588"
!AbtMRI methodsFor: 'recovered'!
displayWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) displayReplace: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c7cb4; bytecode file offset 0x9c4588"
!AbtMRI methodsFor: 'recovered'!
logWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) logReplace: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c8570; bytecode file offset 0x9c4e6c"
!AbtMRI methodsFor: 'recovered'!
displayButtonType: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) displayButtonType: (recoveredValue0) replace: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200cd34c; bytecode file offset 0x9c9c4c"
!AbtMRI methodsFor: 'recovered'!
groupInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) nlsGroupManager.
    recoveredValue3 := (self) group.
    recoveredValue4 := (recoveredValue2) groupNamed: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d78c0; bytecode file offset 0x9d4178"
!AbtMRI methodsFor: 'recovered'!
nonUiMessageHelpBlock: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c3300Arg1 | 
    nil
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200dbb50; bytecode file offset 0x9d8438"
!AbtMRI methodsFor: 'recovered'!
displaySimpleString: recoveredArg1 buttonType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) displayStringSelector.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) perform: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ec6d8; bytecode file offset 0x9e8fd4"
!AbtMRI methodsFor: 'recovered'!
logWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) logReplace: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ec6ec; bytecode file offset 0x9e8fd4"
!AbtMRI methodsFor: 'recovered'!
displayWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) displayReplace: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ec714; bytecode file offset 0x9e8fd4"
!AbtMRI methodsFor: 'recovered'!
stringLogWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) stringLogReplace: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ecfa8; bytecode file offset 0x9e987c"
!AbtMRI methodsFor: 'recovered'!
displayButtonType: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) displayButtonType: (recoveredValue0) replace: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20108000; bytecode file offset 0xa048c8"
!AbtMRI methodsFor: 'recovered'!
log
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) string.
    recoveredValue2 := (self) displayableId.
    recoveredValue3 := (recoveredValue0) string: (recoveredValue1) withAnnotation: (recoveredValue2).
    (self) primLog: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201101fc; bytecode file offset 0xa0cac4"
!AbtMRI methodsFor: 'recovered'!
nonUiDisplaySimpleString: recoveredArg1 buttonType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtPrimitiveLoggingSupport.
    recoveredValue1 := (self) displayableId.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('%1 %2') bindWith: (recoveredValue1) with: (recoveredValue2).
    (recoveredValue0) logError: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20112020; bytecode file offset 0xa0e8e0"
!AbtMRI methodsFor: 'recovered'!
displayButtonType: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) displayButtonType: (recoveredValue0) replace: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20124edc; bytecode file offset 0xa21798"
!AbtMRI methodsFor: 'recovered'!
helpFileName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpFileName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013d100; bytecode file offset 0xa399c0"
!AbtMRI methodsFor: 'recovered'!
display
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isQuestion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtNlsKrnShadowOfXmYESNO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayButtonType: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015421c; bytecode file offset 0xa50ae0"
!AbtMRI methodsFor: 'recovered'!
group: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := AbtMRIManager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMRIGroupName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSBString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) primGroup: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20164f74; bytecode file offset 0xa61834"
!AbtMRI methodsFor: 'recovered'!
displayReplace: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isQuestion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtNlsKrnShadowOfXmYESNO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayButtonType: (recoveredStack1) replace: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016af24; bytecode file offset 0xa677e4"
!AbtMRI methodsFor: 'recovered'!
helpTopicKey
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) id.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) id.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpTopicKeyFromId: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017191c; bytecode file offset 0xa6e1f4"
!AbtMRI methodsFor: 'recovered'!
displayableId
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) internalMessageAnnotationFormat.
    recoveredValue1 := (self) id.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := Locale.
    recoveredValue4 := (recoveredValue3) current.
    recoveredValue5 := (recoveredValue4) preferredStringClass.
    recoveredValue6 := (self) type.
    recoveredValue7 := (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue0) bindWith: (recoveredValue2) with: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201920a4; bytecode file offset 0xa8e970"
!AbtMRI methodsFor: 'recovered'!
primLog: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageStarted.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtPrimitiveLoggingSupport.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := AbtNlsKernelApp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) addPendingInitializationMessage: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20199910; bytecode file offset 0xa961fc"
!AbtMRI methodsFor: 'recovered'!
prefix
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredStringClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) msgPrefix.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20199930; bytecode file offset 0xa961fc"
!AbtMRI methodsFor: 'recovered'!
productPrefix
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredStringClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) productPrefix.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cb9e4; bytecode file offset 0xac82a4"
!AbtMRI methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMRI.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) id.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) id.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) group.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) group.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20216d24; bytecode file offset 0xb135f8"
!AbtMRI methodsFor: 'recovered'!
stringLogReplace: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) coordinator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultReplacementRules.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) replacementRules.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := AbtPrimitiveLoggingSupport.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) string.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) rules: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022ea84; bytecode file offset 0xb2b358"
!AbtMRI methodsFor: 'recovered'!
displayButtonType: recoveredArg1 replace: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := AbtNLSCoordinator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultReplacementRules.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) replacementRules.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) string.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) rules: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) displaySimpleString: (recoveredStack1) buttonType: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023ad4c; bytecode file offset 0xb37630"
!AbtMRI methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) id: (0).
    recoveredValue0 := Locale.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) preferredStringClass.
    recoveredValue3 := (recoveredValue2) new.
    (self) string: (recoveredValue3).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) defaultTypeCharacter.
    (self) type: (recoveredValue5).
    recoveredValue6 := AbtMRIManager.
    recoveredValue7 := (recoveredValue6) defaultMRIGroupName.
    (self) group: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20267d00; bytecode file offset 0xb645dc"
!AbtMRI methodsFor: 'recovered'!
logReplace: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) coordinator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultReplacementRules.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) replacementRules.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) string.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) replace: (recoveredStack3) rules: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) displayableId.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) string: (recoveredStack2) withAnnotation: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) primLog: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029bcb8; bytecode file offset 0xb98588"
!AbtMRI methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCharacter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportedTypeCharacters.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultTypeCharacter.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultTypeCharacter.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) primType: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ba0fc; bytecode file offset 0xbb69c0"
!AbtMRI methodsFor: 'recovered'!
cwMessageHelpBlock: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpTopicKey.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 |
    recoveredBlock23Value0 := AbtHelpAccessor.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := recoveredLocal2.
    recoveredBlock23Value3 := recoveredLocal1.
    recoveredBlock23Value4 := recoveredArg1.
    recoveredBlock23Value5 := (recoveredBlock23Value0) helpFor: (recoveredBlock23Value1) helpFile: (recoveredBlock23Value2) topic: (recoveredBlock23Value3) title: (recoveredBlock23Value4).
    recoveredBlock23Value5
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043d5c4; bytecode file offset 0xd39eb8"
!AbtMRI methodsFor: 'recovered'!
cwDisplaySimpleString: recoveredArg1 buttonType: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := $e.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := XmICONERROR.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := MsgBaseDisplayErrorTitle.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := $w.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := XmICONWARNING.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := MsgBaseDisplayWarningTitle.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := $q.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := XmICONQUESTION.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := MsgBaseDisplayQuestionTitle.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := XmICONINFO.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := MsgBaseDisplayInformationTitle.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayableId.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpFileName.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := AbtExtendedMessagePrompter.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack5 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := (recoveredStack5) isEmpty.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack5) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := (recoveredStack5) messageHelpBlock: (recoveredStack6).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1) title: (recoveredStack2) iconType: (recoveredStack3) buttonType: (recoveredStack4) helpBlock: (recoveredStack5).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20448d1c; bytecode file offset 0xd45608"
!AbtMRI methodsFor: 'recovered'!
internalMessageAnnotationFormat
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := '%1.%2'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := ReadStream.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageAnnotationFormat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredStringClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := $?.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := $%.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := $n.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := $1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := $e.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := $2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

