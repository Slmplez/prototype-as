"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200056f8; bytecode file offset 0x90206c"
!SGAbstractSourceObject methodsFor: 'recovered'!
collectLibraryFiles: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20029224; bytecode file offset 0x934580"
!SGAbstractSourceObject methodsFor: 'recovered'!
makeNode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userReference.
    recoveredValue1 := (recoveredValue0) makeNode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003846c; bytecode file offset 0x934d20"
!SGAbstractSourceObject methodsFor: 'recovered'!
numOfObjectFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d468; bytecode file offset 0x93bf94"
!SGAbstractSourceObject methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGHostAccess.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f3b8; bytecode file offset 0x93bf94"
!SGAbstractSourceObject methodsFor: 'recovered'!
generatorFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d614; bytecode file offset 0x96a390"
!SGAbstractSourceObject methodsFor: 'recovered'!
sourceCollector
    | recoveredValue0 |
    recoveredValue0 := sourceCollector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007f8dc; bytecode file offset 0x97c330"
!SGAbstractSourceObject methodsFor: 'recovered'!
isAdditionalFileSource
    ^false
! !

"ASDBase.ic method 0x200954b8; bytecode file offset 0x991fb4"
!SGAbstractSourceObject methodsFor: 'recovered'!
collectObjectFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fileName.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c3fb4; bytecode file offset 0x9c0bf0"
!SGAbstractSourceObject methodsFor: 'recovered'!
sourceCollector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceCollector := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20110080; bytecode file offset 0xa0c940"
!SGAbstractSourceObject methodsFor: 'recovered'!
collectNoLibObjectFiles: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProjectNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) collectObjectFiles: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20133c00; bytecode file offset 0xa305e4"
!SGAbstractSourceObject methodsFor: 'recovered'!
bannerTemplate: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bannerTemplates.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186930; bytecode file offset 0xa831f8"
!SGAbstractSourceObject methodsFor: 'recovered'!
collectModuleFiles: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProjectNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInitCode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030e228; bytecode file offset 0xc0ab28"
!SGAbstractSourceObject methodsFor: 'recovered'!
fileoutInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := SGCgFileoutInfo.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) makeNode.
    recoveredValue5 := (recoveredValue4) buildEnvironmentInfo.
    (recoveredValue3) buildEnvironmentInfo: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := (self) userReference.
    recoveredValue8 := (recoveredValue7) componentInfo.
    (recoveredValue6) bannerInfosFrom: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := Date.
    recoveredValue11 := (recoveredValue10) today.
    recoveredValue12 := (recoveredValue11) printString.
    (recoveredValue9) creationDate: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := Time.
    recoveredValue15 := (recoveredValue14) now.
    recoveredValue16 := (recoveredValue15) printString.
    (recoveredValue13) creationTime: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := (self) description.
    (recoveredValue17) description: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := (self) fileName.
    (recoveredValue19) name: (recoveredValue20).
    recoveredValue21 := recoveredLocal1.
    ^recoveredValue21
! !

