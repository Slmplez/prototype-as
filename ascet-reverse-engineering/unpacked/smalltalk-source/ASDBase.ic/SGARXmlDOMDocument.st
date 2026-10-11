"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d84c; bytecode file offset 0x90a4b8"
!SGARXmlDOMDocument methodsFor: 'recovered'!
convertCharacterValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065894; bytecode file offset 0x963428"
!SGARXmlDOMDocument methodsFor: 'recovered'!
rootTag
    | recoveredValue0 |
    recoveredValue0 := rootTag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067294; bytecode file offset 0x9646f8"
!SGARXmlDOMDocument methodsFor: 'recovered'!
autosarSettings
    | recoveredValue0 |
    recoveredValue0 := autosarSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b058c; bytecode file offset 0x9ace74"
!SGARXmlDOMDocument methodsFor: 'recovered'!
createDocumentFragment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGARXmlNamespaceFragment.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) ownerDocument: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bf3f0; bytecode file offset 0x9bc0b4"
!SGARXmlDOMDocument methodsFor: 'recovered'!
autosarSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    autosarSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010c740; bytecode file offset 0xa09004"
!SGARXmlDOMDocument methodsFor: 'recovered'!
createElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGARXmlTag.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) ownerDocument: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20196e08; bytecode file offset 0xa936d4"
!SGARXmlDOMDocument methodsFor: 'recovered'!
createPackage: recoveredArg1 sortLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGARXmlPackage.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) ownerDocument: (self).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) shortName: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) sortLabel: (recoveredValue8).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201d87bc; bytecode file offset 0xad5088"
!SGARXmlDOMDocument methodsFor: 'recovered'!
createComment: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGARXmlComment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) isDBString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSBString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) text: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ownerDocument: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020fb68; bytecode file offset 0xb0c438"
!SGARXmlDOMDocument methodsFor: 'recovered'!
createElement: recoveredArg1 text: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGARXmlText.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) isDBString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSBString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) text: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) ownerDocument: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ca8c4; bytecode file offset 0xcc71b4"
!SGARXmlDOMDocument methodsFor: 'recovered'!
arXmlPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('<?xml version="1.0" encoding="UTF-8" ?>').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) autosarSettings.
    recoveredValue5 := (recoveredValue4) schemaLocation.
    recoveredValue6 := ('<AUTOSAR xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="') , (recoveredValue5).
    (recoveredValue3) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) autosarSettings.
    recoveredValue9 := (recoveredValue8) versionSchemaString.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := (self) autosarSettings.
    recoveredValue12 := (recoveredValue11) schemaLocation.
    recoveredValue13 := ('" xsi:schemaLocation="') , (recoveredValue12).
    (recoveredValue10) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue0.
    recoveredValue15 := (self) autosarSettings.
    recoveredValue16 := (recoveredValue15) versionSchemaString.
    (recoveredValue14) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    (recoveredValue17) nextPutAll: (' ').
    recoveredValue18 := recoveredValue0.
    recoveredValue19 := (self) autosarSettings.
    recoveredValue20 := (recoveredValue19) schemaFileName.
    (recoveredValue18) nextPutAll: (recoveredValue20).
    (recoveredValue0) nextPutAll: ('">').
    recoveredValue21 := rootTag.
    recoveredValue22 := recoveredArg1.
    (recoveredValue21) arXmlPrintOn: (recoveredValue22).
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := recoveredValue23.
    (recoveredValue24) newline.
    (recoveredValue23) nextPutAll: ('</AUTOSAR>').
    ^self
! !

