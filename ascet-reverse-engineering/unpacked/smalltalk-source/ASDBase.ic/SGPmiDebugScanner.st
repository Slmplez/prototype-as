"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006a298; bytecode file offset 0x966bdc"
!SGPmiDebugScanner methodsFor: 'recovered'!
logInfo
    | recoveredValue0 |
    recoveredValue0 := logInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fa09c; bytecode file offset 0x9f6a08"
!SGPmiDebugScanner methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    logInfo := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201e0fc8; bytecode file offset 0xadd898"
!SGPmiDebugScanner methodsFor: 'recovered'!
nextToken
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := super nextToken.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) tokenValue.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) tokenValue: (recoveredValue2).
    recoveredValue3 := logInfo.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    (recoveredValue3) add: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

