"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002078c; bytecode file offset 0x92209c"
!SGCodeContainer methodsFor: 'recovered'!
encryptionKey
    ^4272688507
! !

"ASDBase.ic method 0x20029504; bytecode file offset 0x934580"
!SGCodeContainer methodsFor: 'recovered'!
aliasName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) thisVersionKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200297a4; bytecode file offset 0x934580"
!SGCodeContainer methodsFor: 'recovered'!
hasExternalCSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) hasExternalCSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cd54; bytecode file offset 0x934580"
!SGCodeContainer methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d114; bytecode file offset 0x934580"
!SGCodeContainer methodsFor: 'recovered'!
generatorOption
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := (recoveredValue0) generatorVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002da94; bytecode file offset 0x934580"
!SGCodeContainer methodsFor: 'recovered'!
hasExternalCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) hasExternalCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fdb4; bytecode file offset 0x934580"
!SGCodeContainer methodsFor: 'recovered'!
hasExternalCodeToBeCompiled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) hasExternalCodeToBeCompiled.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032274; bytecode file offset 0x934580"
!SGCodeContainer methodsFor: 'recovered'!
hasToBeCompiled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) hasToBeCompiled.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032b04; bytecode file offset 0x934580"
!SGCodeContainer methodsFor: 'recovered'!
applicationFlag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) applicationFlag.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200418fc; bytecode file offset 0x93e1cc"
!SGCodeContainer methodsFor: 'recovered'!
hSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := hSource.
    recoveredValue1 := (self) decrypt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063b44; bytecode file offset 0x961970"
!SGCodeContainer methodsFor: 'recovered'!
clearToBeCompiled
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) clearToBeCompiled.
    ^self
! !

"ASDBase.ic method 0x20064004; bytecode file offset 0x961970"
!SGCodeContainer methodsFor: 'recovered'!
commitWithoutCacheWrite
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) commitWithoutCacheWrite.
    ^self
! !

"ASDBase.ic method 0x20064424; bytecode file offset 0x961970"
!SGCodeContainer methodsFor: 'recovered'!
modifiedWithoutTimeStamp
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) setModify.
    ^self
! !

"ASDBase.ic method 0x20064454; bytecode file offset 0x961970"
!SGCodeContainer methodsFor: 'recovered'!
setToValidCode
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) applicationTimeStampNow.
    ^self
! !

"ASDBase.ic method 0x20064544; bytecode file offset 0x961970"
!SGCodeContainer methodsFor: 'recovered'!
setToBeCompiled
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) setToBeCompiled.
    ^self
! !

"ASDBase.ic method 0x20064c14; bytecode file offset 0x961970"
!SGCodeContainer methodsFor: 'recovered'!
setToInvalidCode
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) setToInvalidCode.
    ^self
! !

"ASDBase.ic method 0x20066b34; bytecode file offset 0x963428"
!SGCodeContainer methodsFor: 'recovered'!
variantKey
    | recoveredValue0 |
    recoveredValue0 := variantKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c4ec; bytecode file offset 0x9692b0"
!SGCodeContainer methodsFor: 'recovered'!
dbObject
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cf90; bytecode file offset 0x969c04"
!SGCodeContainer methodsFor: 'recovered'!
encryption
    | recoveredValue0 |
    recoveredValue0 := encryption.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075f9c; bytecode file offset 0x9757c8"
!SGCodeContainer methodsFor: 'recovered'!
isDbObject
    ^true
! !

"ASDBase.ic method 0x2007c6c4; bytecode file offset 0x97c330"
!SGCodeContainer methodsFor: 'recovered'!
isEmpty
    ^false
! !

"ASDBase.ic method 0x2008d7e0; bytecode file offset 0x98a0a4"
!SGCodeContainer methodsFor: 'recovered'!
setEncryption
    (self) encryption: (1).
    ^self
! !

"ASDBase.ic method 0x20098bc4; bytecode file offset 0x995850"
!SGCodeContainer methodsFor: 'recovered'!
applicationFlag: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) applicationFlag: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009b098; bytecode file offset 0x997954"
!SGCodeContainer methodsFor: 'recovered'!
writeXML: recoveredArg1 methods: recoveredArg2 impl: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) controller.
    (recoveredValue1) alienFound: (self).
    ^self
! !

"ASDBase.ic method 0x200a85ac; bytecode file offset 0x9a4e64"
!SGCodeContainer methodsFor: 'recovered'!
targetOptions: recoveredArg1
    | recoveredValue0 |
    (self) modifiedWithoutTimeStamp.
    recoveredValue0 := recoveredArg1.
    targetOptions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200b3454; bytecode file offset 0x9afe54"
!SGCodeContainer methodsFor: 'recovered'!
setExternalCSource
    | recoveredValue0 |
    (self) modifiedWithoutTimeStamp.
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) setExternalCSource.
    ^self
! !

"ASDBase.ic method 0x200b3468; bytecode file offset 0x9afe54"
!SGCodeContainer methodsFor: 'recovered'!
setExternalCode
    | recoveredValue0 |
    (self) modifiedWithoutTimeStamp.
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) setExternalCode.
    ^self
! !

"ASDBase.ic method 0x200b34f4; bytecode file offset 0x9afe54"
!SGCodeContainer methodsFor: 'recovered'!
clearExternalCode
    | recoveredValue0 |
    (self) modifiedWithoutTimeStamp.
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) clearExternalCode.
    ^self
! !

"ASDBase.ic method 0x200b3580; bytecode file offset 0x9afe54"
!SGCodeContainer methodsFor: 'recovered'!
clearExternalCSource
    | recoveredValue0 |
    (self) modifiedWithoutTimeStamp.
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) clearExternalCSource.
    ^self
! !

"ASDBase.ic method 0x200bde24; bytecode file offset 0x9bb178"
!SGCodeContainer methodsFor: 'recovered'!
xmlVariantKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    variantKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c061c; bytecode file offset 0x9bd228"
!SGCodeContainer methodsFor: 'recovered'!
cSourceBasic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c11a0; bytecode file offset 0x9bdf14"
!SGCodeContainer methodsFor: 'recovered'!
hSourceBasic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1f0c; bytecode file offset 0x9beac8"
!SGCodeContainer methodsFor: 'recovered'!
h2SourceBasic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    h2Source := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2d04; bytecode file offset 0x9bfde0"
!SGCodeContainer methodsFor: 'recovered'!
dbObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c38c8; bytecode file offset 0x9c058c"
!SGCodeContainer methodsFor: 'recovered'!
encryption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    encryption := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cc11c; bytecode file offset 0x9c89dc"
!SGCodeContainer methodsFor: 'recovered'!
oSource
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Association.
    recoveredValue1 := (self) aliasName.
    recoveredValue2 := oSource.
    recoveredValue3 := (recoveredValue0) key: (recoveredValue1) value: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d8268; bytecode file offset 0x9d4b64"
!SGCodeContainer methodsFor: 'recovered'!
generatorOption: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) modifiedWithoutTimeStamp.
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) generatorVariant: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200da86c; bytecode file offset 0x9d7154"
!SGCodeContainer methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) name: (recoveredValue1).
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x200ff64c; bytecode file offset 0x9fbf0c"
!SGCodeContainer methodsFor: 'recovered'!
encrypt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) encryption.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) encryptionKey.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) simpleEncryptWithKey: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20104da8; bytecode file offset 0xa01670"
!SGCodeContainer methodsFor: 'recovered'!
cSource
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Association.
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) thisVersionKey.
    recoveredValue3 := cSource.
    recoveredValue4 := (self) decrypt: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) key: (recoveredValue2) value: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010dfe4; bytecode file offset 0xa0a8ac"
!SGCodeContainer methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    recoveredValue3 := (self) variantKey.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010ebe8; bytecode file offset 0xa0b4a8"
!SGCodeContainer methodsFor: 'recovered'!
hSource: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) encrypt: (recoveredValue0).
    hSource := recoveredValue1.
    (self) setToBeCompiled.
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x2010ec0c; bytecode file offset 0xa0b4cc"
!SGCodeContainer methodsFor: 'recovered'!
h2Source: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) encrypt: (recoveredValue0).
    h2Source := recoveredValue1.
    (self) setToBeCompiled.
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x2010faa8; bytecode file offset 0xa0c36c"
!SGCodeContainer methodsFor: 'recovered'!
decrypt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) encryption.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) encryptionKey.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) simpleDecryptWithKey: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f29c; bytecode file offset 0xa1bb5c"
!SGCodeContainer methodsFor: 'recovered'!
oSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oSource := recoveredValue0.
    (self) setToValidCode.
    (self) clearToBeCompiled.
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x201292e8; bytecode file offset 0xa25c54"
!SGCodeContainer methodsFor: 'recovered'!
targetOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := targetOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGTargetOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            targetOptions := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := targetOptions.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20141cdc; bytecode file offset 0xa3e594"
!SGCodeContainer methodsFor: 'recovered'!
variantKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := variantKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            variantKey := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) modifiedWithoutTimeStamp.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20145724; bytecode file offset 0xa41fe8"
!SGCodeContainer methodsFor: 'recovered'!
cSource: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) encrypt: (recoveredValue0).
    cSource := recoveredValue1.
    (self) setToBeCompiled.
    (self) setToValidCode.
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x2015d0b4; bytecode file offset 0xa59974"
!SGCodeContainer methodsFor: 'recovered'!
h2Source
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := h2Source.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            h2Source := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) modifiedWithoutTimeStamp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := h2Source.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) decrypt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018f1d0; bytecode file offset 0xa8ba8c"
!SGCodeContainer methodsFor: 'recovered'!
xmlInit
    (self) setEncryption.
    cSource := ''.
    hSource := ''.
    h2Source := ''.
    oSource := ''.
    ^self
! !

"ASDBase.ic method 0x202a07ac; bytecode file offset 0xb9d084"
!SGCodeContainer methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    (self) applicationFlag: (0).
    (self) setEncryption.
    cSource := ''.
    hSource := ''.
    h2Source := ''.
    oSource := ''.
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) clearToBeCompiled.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) setToInvalidCode.
    (recoveredValue0) setExternalCSource.
    ^self
! !

"ASDBase.ic method 0x202e9f5c; bytecode file offset 0xbe6834"
!SGCodeContainer methodsFor: 'recovered'!
convertToAscet50
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_2000972'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) encryption.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := cSource.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDBString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := cSource.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) encryptionKey.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) simpleDecryptOldVersionWithKey: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) cSource: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := hSource.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDBString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := hSource.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) encryptionKey.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) simpleDecryptOldVersionWithKey: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) hSource: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20361ea0; bytecode file offset 0xc5e78c"
!SGCodeContainer methodsFor: 'recovered'!
duplicate
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
            recoveredStack1 := variantKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) duplicate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithKey: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationFlag.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) applicationFlag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) encryption.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) encryption: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := targetOptions.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := targetOptions.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) duplicate.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) targetOptions: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := cSource.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) cSourceBasic: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := hSource.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) hSourceBasic: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := h2Source.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) h2SourceBasic: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := oSource.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) oSource: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

