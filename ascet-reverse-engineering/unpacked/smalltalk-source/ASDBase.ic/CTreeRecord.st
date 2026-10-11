"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008aa4; bytecode file offset 0x908be4"
!CTreeRecord methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) baseName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ae2c; bytecode file offset 0x947768"
!CTreeRecord methodsFor: 'recovered'!
deleteFlag
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004aed8; bytecode file offset 0x947a60"
!CTreeRecord methodsFor: 'recovered'!
storedFixedSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200767b4; bytecode file offset 0x9757c8"
!CTreeRecord methodsFor: 'recovered'!
isCTreeRecord
    ^true
! !

"ASDBase.ic method 0x20078d04; bytecode file offset 0x9757c8"
!CTreeRecord methodsFor: 'recovered'!
isValidBufferForSwapping
    ^true
! !

"ASDBase.ic method 0x200861d0; bytecode file offset 0x982a8c"
!CTreeRecord methodsFor: 'recovered'!
fieldIndexAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fieldOffsetAt: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (1).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009fba8; bytecode file offset 0x99c9e0"
!CTreeRecord methodsFor: 'recovered'!
setFixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    (self) storedFixedSize: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5dac; bytecode file offset 0x9a27f0"
!CTreeRecord methodsFor: 'recovered'!
storedFixedSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b2d0c; bytecode file offset 0x9af5cc"
!CTreeRecord methodsFor: 'recovered'!
blobSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    recoveredValue2 := (recoveredValue1) - (4).
    recoveredValue3 := (self) uint32At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b30ac; bytecode file offset 0x9af96c"
!CTreeRecord methodsFor: 'recovered'!
fixedRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    recoveredValue2 := (self) copyFrom: (1) to: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b46ac; bytecode file offset 0x9b0f88"
!CTreeRecord methodsFor: 'recovered'!
globalId
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) pcId.
    recoveredValue1 := (self) tsThisVersion.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := (self) transactionId.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200cb1f0; bytecode file offset 0x9c7b3c"
!CTreeRecord methodsFor: 'recovered'!
asProxyIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asProxy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) dbInterface: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fc868; bytecode file offset 0x9f9128"
!CTreeRecord methodsFor: 'recovered'!
blobSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    recoveredValue2 := (recoveredValue1) - (4).
    recoveredValue3 := recoveredArg1.
    (self) uint32At: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012734c; bytecode file offset 0xa23c28"
!CTreeRecord methodsFor: 'recovered'!
copyPSZStringFrom: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) findFirstNull: (recoveredValue1) stop: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) memcpyStringFrom: (recoveredValue4) to: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2014517c; bytecode file offset 0xa41a40"
!CTreeRecord methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameLength.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) baseName: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20181ec0; bytecode file offset 0xa7e78c"
!CTreeRecord methodsFor: 'recovered'!
asProxy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxyClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createUndefined.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxyClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFromRecord: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bcef4; bytecode file offset 0xab97bc"
!CTreeRecord methodsFor: 'recovered'!
blob: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) blobStart.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := (self) size.
    recoveredValue9 := (recoveredValue7) min: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) + (-1).
    recoveredValue11 := recoveredArg1.
    (self) replaceFrom: (recoveredValue2) to: (recoveredValue10) with: (recoveredValue11) startingAt: (1).
    ^self
! !

"ASDBase.ic method 0x20288a84; bytecode file offset 0xb85354"
!CTreeRecord methodsFor: 'recovered'!
findFirstNull: recoveredArg1 stop: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint8At: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 39]] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d2254; bytecode file offset 0xbceb2c"
!CTreeRecord methodsFor: 'recovered'!
blob
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) blobSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) blobStart.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceFrom: (recoveredStack1) to: (recoveredStack2) with: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e15bc; bytecode file offset 0xbdde94"
!CTreeRecord methodsFor: 'recovered'!
blobPart
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) blobSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 1024.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) blobSize.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) blobStart.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceFrom: (recoveredStack1) to: (recoveredStack2) with: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203161c0; bytecode file offset 0xc12a90"
!CTreeRecord methodsFor: 'recovered'!
header: recoveredArg1 stream: recoveredArg2 behaviors: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) + (-1).
    (recoveredValue0) memcpyFrom: (0) to: (recoveredValue3) into: (self) startingAt: (0).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) collection.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) position.
    recoveredValue8 := (recoveredValue7) + (-1).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) size.
    (recoveredValue5) memcpyFrom: (0) to: (recoveredValue8) into: (self) startingAt: (recoveredValue10).
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) collection.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue13) position.
    recoveredValue15 := (recoveredValue14) + (-1).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) size.
    recoveredValue18 := recoveredArg3.
    recoveredValue19 := (recoveredValue18) position.
    recoveredValue20 := (recoveredValue17) + (recoveredValue19).
    (recoveredValue12) memcpyFrom: (0) to: (recoveredValue15) into: (self) startingAt: (recoveredValue20).
    recoveredValue21 := (self) size.
    recoveredValue22 := (self) class.
    recoveredValue23 := (recoveredValue22) fixedSize.
    recoveredValue24 := (recoveredValue21) - (recoveredValue23).
    (self) blobSize: (recoveredValue24).
    ^self
! !

"ASDBase.ic method 0x2053efd0; bytecode file offset 0xe3b8f4"
!CTreeRecord methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) members.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super printOn: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) fixedSize.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'invalid CTreeRecord, size '.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := ' less fixedSize '.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := '  blobSize '.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) blobSize.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := ${.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) members.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Local1 recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 recoveredBlock93Value4 recoveredBlock93Value5 recoveredBlock93Value6 recoveredBlock93Value7 recoveredBlock93Value8 recoveredBlock93Value9 recoveredBlock93Value10 recoveredBlock93Value11 recoveredBlock93Value12 |
    recoveredBlock93Value0 := recoveredArg1.
    recoveredBlock93Value1 := recoveredBlock93Value0.
    recoveredBlock93Value2 := recoveredBlock93Arg1.
    (recoveredBlock93Value1) nextPutAll: (recoveredBlock93Value2).
    (recoveredBlock93Value0) nextPut: ($().
    recoveredBlock93Value3 := (self) class.
    recoveredBlock93Value4 := recoveredBlock93Arg1.
    recoveredBlock93Value5 := (recoveredBlock93Value4) asString.
    recoveredBlock93Value6 := (recoveredBlock93Value3) fieldOffsetAt: (recoveredBlock93Value5).
    recoveredBlock93Value7 := recoveredArg1.
    (recoveredBlock93Value6) printOn: (recoveredBlock93Value7).
    recoveredBlock93Value8 := recoveredArg1.
    (recoveredBlock93Value8) nextPutAll: (')  :').
    recoveredBlock93Value9 := [
    | recoveredBlock93Block134Stack0 recoveredBlock93Block134Stack1 recoveredBlock93Block134Stack2 recoveredBlock93Block134Stack3 recoveredBlock93Block134PC recoveredBlock93Block134Step recoveredBlock93Block134Done recoveredBlock93Block134Result |
    recoveredBlock93Block134Stack0 := self.
    recoveredBlock93Block134PC := 140.
    recoveredBlock93Block134Done := false.
    [recoveredBlock93Block134Done not] whileTrue: [
        recoveredBlock93Block134Step := recoveredBlock93Block134PC.
        recoveredBlock93Block134Step = 140 ifTrue: [
            recoveredBlock93Block134Stack1 := recoveredBlock93Arg1.
            recoveredBlock93Block134PC := 143.
        ].
        recoveredBlock93Block134Step = 143 ifTrue: [
            recoveredBlock93Block134Stack0 := (recoveredBlock93Block134Stack0) perform: (recoveredBlock93Block134Stack1).
            recoveredBlock93Block134PC := 145.
        ].
        recoveredBlock93Block134Step = 145 ifTrue: [
            recoveredBlock93Block134Stack1 := recoveredBlock93Block134Stack0.
            recoveredBlock93Block134PC := 146.
        ].
        recoveredBlock93Block134Step = 146 ifTrue: [
            recoveredBlock93Local1 := recoveredBlock93Block134Stack1.
            recoveredBlock93Block134PC := 149.
        ].
        recoveredBlock93Block134Step = 149 ifTrue: [
            recoveredBlock93Block134Stack0 := (recoveredBlock93Block134Stack0) isString.
            recoveredBlock93Block134PC := 151.
        ].
        recoveredBlock93Block134Step = 151 ifTrue: [
            (recoveredBlock93Block134Stack0) ifTrue: [recoveredBlock93Block134PC := 154] ifFalse: [recoveredBlock93Block134PC := 162].
        ].
        recoveredBlock93Block134Step = 154 ifTrue: [
            recoveredBlock93Block134Stack0 := recoveredBlock93Local1.
            recoveredBlock93Block134PC := 157.
        ].
        recoveredBlock93Block134Step = 157 ifTrue: [
            recoveredBlock93Block134Stack0 := (recoveredBlock93Block134Stack0) trimNull.
            recoveredBlock93Block134PC := 159.
        ].
        recoveredBlock93Block134Step = 159 ifTrue: [
            recoveredBlock93Local1 := recoveredBlock93Block134Stack0.
            recoveredBlock93Block134PC := 162.
        ].
        recoveredBlock93Block134Step = 162 ifTrue: [
            recoveredBlock93Block134Stack0 := recoveredArg1.
            recoveredBlock93Block134PC := 165.
        ].
        recoveredBlock93Block134Step = 165 ifTrue: [
            recoveredBlock93Block134Stack1 := recoveredBlock93Block134Stack0.
            recoveredBlock93Block134PC := 166.
        ].
        recoveredBlock93Block134Step = 166 ifTrue: [
            recoveredBlock93Block134Stack2 := recoveredBlock93Local1.
            recoveredBlock93Block134PC := 169.
        ].
        recoveredBlock93Block134Step = 169 ifTrue: [
            recoveredBlock93Block134Stack2 := (recoveredBlock93Block134Stack2) printString.
            recoveredBlock93Block134PC := 171.
        ].
        recoveredBlock93Block134Step = 171 ifTrue: [
            (recoveredBlock93Block134Stack1) nextPutAll: (recoveredBlock93Block134Stack2).
            recoveredBlock93Block134PC := 173.
        ].
        recoveredBlock93Block134Step = 173 ifTrue: [
            recoveredBlock93Block134Stack0 := (recoveredBlock93Block134Stack0) cr.
            recoveredBlock93Block134PC := 175.
        ].
        recoveredBlock93Block134Step = 175 ifTrue: [
            recoveredBlock93Block134Result := recoveredBlock93Block134Stack0.
            recoveredBlock93Block134Done := true.
        ].
    ].
    recoveredBlock93Block134Result
].
    recoveredBlock93Value10 := ExError.
    recoveredBlock93Value11 := [:recoveredBlock93Block178Arg1 | 
    | recoveredBlock93Block178Value0 recoveredBlock93Block178Value1 recoveredBlock93Block178Value2 |
    recoveredBlock93Block178Value0 := recoveredArg1.
    (recoveredBlock93Block178Value0) nextPutAll: ('failed').
    recoveredBlock93Block178Value1 := recoveredBlock93Block178Arg1.
    recoveredBlock93Block178Value2 := (recoveredBlock93Block178Value1) exitWith: (nil).
    recoveredBlock93Block178Value2
].
    recoveredBlock93Value12 := (recoveredBlock93Value9) when: (recoveredBlock93Value10) do: (recoveredBlock93Value11).
    recoveredBlock93Value12
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := $}.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

