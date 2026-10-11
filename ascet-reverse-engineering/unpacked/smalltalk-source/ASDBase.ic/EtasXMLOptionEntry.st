"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20035224; bytecode file offset 0x934580"
!EtasXMLOptionEntry methodsFor: 'recovered'!
forceNewDescription
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionClass.
    recoveredValue1 := (recoveredValue0) forceNewDescription.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039734; bytecode file offset 0x938608"
!EtasXMLOptionEntry methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200665c4; bytecode file offset 0x963428"
!EtasXMLOptionEntry methodsFor: 'recovered'!
xmlCategory
    | recoveredValue0 |
    recoveredValue0 := xmlCategory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006755c; bytecode file offset 0x9646f8"
!EtasXMLOptionEntry methodsFor: 'recovered'!
attributeName
    | recoveredValue0 |
    recoveredValue0 := attributeName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069558; bytecode file offset 0x966bdc"
!EtasXMLOptionEntry methodsFor: 'recovered'!
optionClass
    | recoveredValue0 |
    recoveredValue0 := optionClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006addc; bytecode file offset 0x967a18"
!EtasXMLOptionEntry methodsFor: 'recovered'!
optionFile
    | recoveredValue0 |
    recoveredValue0 := optionFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074c34; bytecode file offset 0x9757c8"
!EtasXMLOptionEntry methodsFor: 'recovered'!
isXMLOption
    ^true
! !

"ASDBase.ic method 0x20077dcc; bytecode file offset 0x9757c8"
!EtasXMLOptionEntry methodsFor: 'recovered'!
isCustomizable
    ^true
! !

"ASDBase.ic method 0x200bf278; bytecode file offset 0x9bc0b4"
!EtasXMLOptionEntry methodsFor: 'recovered'!
attributeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributeName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0174; bytecode file offset 0x9bd228"
!EtasXMLOptionEntry methodsFor: 'recovered'!
oldName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oldName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0fc8; bytecode file offset 0x9bdf14"
!EtasXMLOptionEntry methodsFor: 'recovered'!
optionClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    optionClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1b0c; bytecode file offset 0x9beac8"
!EtasXMLOptionEntry methodsFor: 'recovered'!
optionFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    optionFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e50c4; bytecode file offset 0x9e1a70"
!EtasXMLOptionEntry methodsFor: 'recovered'!
lastDefault
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastDefault.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e5104; bytecode file offset 0x9e1a70"
!EtasXMLOptionEntry methodsFor: 'recovered'!
xmlLastDefault
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlLastDefault.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e5154; bytecode file offset 0x9e1a70"
!EtasXMLOptionEntry methodsFor: 'recovered'!
xmlDefault
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlDefault.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e5164; bytecode file offset 0x9e1a70"
!EtasXMLOptionEntry methodsFor: 'recovered'!
label
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e5184; bytecode file offset 0x9e1a70"
!EtasXMLOptionEntry methodsFor: 'recovered'!
xmlValue
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlValue.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e51a4; bytecode file offset 0x9e1a70"
!EtasXMLOptionEntry methodsFor: 'recovered'!
value
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff428; bytecode file offset 0x9fbd94"
!EtasXMLOptionEntry methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff4f8; bytecode file offset 0x9fbdc4"
!EtasXMLOptionEntry methodsFor: 'recovered'!
xmlValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlValue: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105b1c; bytecode file offset 0xa023d0"
!EtasXMLOptionEntry methodsFor: 'recovered'!
oldName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := oldName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := attributeName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := oldName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20115f20; bytecode file offset 0xa127e4"
!EtasXMLOptionEntry methodsFor: 'recovered'!
optionCategory
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := optionCategory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'FILE'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            optionCategory := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := optionCategory.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201218f8; bytecode file offset 0xa1e1b8"
!EtasXMLOptionEntry methodsFor: 'recovered'!
optionCategory: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionCategories.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            optionCategory := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201662e4; bytecode file offset 0xa62ba4"
!EtasXMLOptionEntry methodsFor: 'recovered'!
xmlCategory: recoveredArg1
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
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ankubelk'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) etasDevHaltFor: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            xmlCategory := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ee4e0; bytecode file offset 0xaeadb0"
!EtasXMLOptionEntry methodsFor: 'recovered'!
writeValue: recoveredArg1 toTag: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCDATASection: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) asEscapedString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) data: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20243f9c; bytecode file offset 0xb40874"
!EtasXMLOptionEntry methodsFor: 'recovered'!
updateWithXMLDeclaration: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'optionClass'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) updateDefaultValueWithXMLDeclaration: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) updateSensitiveWithXMLDeclaration: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) updateVisibleWithXMLDeclaration: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) updateValueWithXMLDeclaration: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027aa7c; bytecode file offset 0xb77398"
!EtasXMLOptionEntry methodsFor: 'recovered'!
writeLastDefaultToTag: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributeName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlPrintString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCDATASection: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlDefault.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) data: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027aab4; bytecode file offset 0xb77398"
!EtasXMLOptionEntry methodsFor: 'recovered'!
writeOptionToTag: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributeName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlPrintString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCDATASection: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlValue.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) data: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20300c00; bytecode file offset 0xbfd4cc"
!EtasXMLOptionEntry methodsFor: 'recovered'!
readLastDefaultFromTag: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) value.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) default.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) = (recoveredBlock26Stack3).
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 49] ifFalse: [recoveredBlock26PC := 42].
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 44.
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal1.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) xmlUpdateToDefaultFrom: (recoveredBlock26Stack2).
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203af27c; bytecode file offset 0xcabb78"
!EtasXMLOptionEntry methodsFor: 'recovered'!
writeOptionStructureToTag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeName.
    recoveredValue2 := (recoveredValue1) abtXmlPrintString.
    (recoveredValue0) setAttribute: ('xmlName') value: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) xmlCategory.
    recoveredValue5 := (recoveredValue4) abtXmlPrintString.
    (recoveredValue3) setAttribute: ('xmlPath') value: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) optionClass.
    recoveredValue8 := (recoveredValue7) group.
    recoveredValue9 := (recoveredValue8) abtXmlPrintString.
    (recoveredValue6) setAttribute: ('optionTreePath') value: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (self) optionClass.
    recoveredValue12 := (recoveredValue11) label.
    recoveredValue13 := (recoveredValue12) abtXmlPrintString.
    (recoveredValue10) setAttribute: ('optionLabel') value: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (self) optionClass.
    recoveredValue16 := (recoveredValue15) toolTip.
    recoveredValue17 := (recoveredValue16) abtXmlPrintString.
    (recoveredValue14) setAttribute: ('optionToolTip') value: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (self) optionClass.
    recoveredValue20 := (recoveredValue19) description.
    recoveredValue21 := (recoveredValue20) abtXmlPrintString.
    (recoveredValue18) setAttribute: ('optionDescription') value: (recoveredValue21).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := (self) optionClass.
    recoveredValue24 := (recoveredValue23) default.
    recoveredValue25 := (recoveredValue24) asString.
    recoveredValue26 := (recoveredValue25) abtXmlPrintString.
    (recoveredValue22) setAttribute: ('optionDefault') value: (recoveredValue26).
    ^self
! !

"ASDBase.ic method 0x203f3340; bytecode file offset 0xcefc2c"
!EtasXMLOptionEntry methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) attributeName.
    recoveredValue6 := (recoveredValue5) asString.
    recoveredValue7 := ('attributeName: %1') bindWith: (recoveredValue6).
    (recoveredValue4) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) cr.
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) xmlCategory.
    recoveredValue12 := (recoveredValue11) asString.
    recoveredValue13 := ('xmlCategory:   %1') bindWith: (recoveredValue12).
    (recoveredValue10) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := (self) optionFile.
    recoveredValue17 := (recoveredValue16) asString.
    recoveredValue18 := ('optionFile     %1') bindWith: (recoveredValue17).
    (recoveredValue15) nextPutAll: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) cr.
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) cr.
    (recoveredValue1) cr.
    recoveredValue21 := (self) optionClass.
    recoveredValue22 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 |
    recoveredBlock76Value0 := recoveredBlock76Arg1.
    recoveredBlock76Value1 := recoveredArg1.
    recoveredBlock76Value2 := (recoveredBlock76Value0) printOn: (recoveredBlock76Value1).
    recoveredBlock76Value2
].
    (recoveredValue21) ifNotNil: (recoveredValue22).
    ^self
! !

"ASDBase.ic method 0x2041e704; bytecode file offset 0xd1afec"
!EtasXMLOptionEntry methodsFor: 'recovered'!
readOptionFromTag: recoveredArg1 overrideFixed: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCategory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'FIXED'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlValue: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock37Value0 recoveredBlock37Value1 |
    recoveredBlock37Value0 := recoveredArg3.
    recoveredBlock37Value1 := (self) attributeName.
    (recoveredBlock37Value0) value: (recoveredBlock37Value1) value: ('<undefined>') value: ('No value specified!!').
    ^nil
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlValue: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 |
    recoveredBlock72Value0 := recoveredArg3.
    recoveredBlock72Value1 := (self) attributeName.
    recoveredBlock72Value2 := recoveredLocal1.
    recoveredBlock72Value3 := (recoveredBlock72Value2) data.
    recoveredBlock72Value4 := (recoveredBlock72Value3) asSBString.
    (recoveredBlock72Value0) value: (recoveredBlock72Value1) value: (recoveredBlock72Value4) value: ('Value does not match option!!').
    ^nil
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053c3a4; bytecode file offset 0xe38ce0"
!EtasXMLOptionEntry methodsFor: 'recovered'!
writeDeclarationToXMLDocument: recoveredArg1 optionTag: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) attributeName.
    recoveredValue2 := (recoveredValue1) asEscapedString.
    (recoveredValue0) setAttribute: ('attributeName') value: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) optionCategory.
    recoveredValue5 := (recoveredValue4) asEscapedString.
    (recoveredValue3) setAttribute: ('optionCategory') value: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (self) xmlCategory.
    recoveredValue8 := (recoveredValue7) asEscapedString.
    (recoveredValue6) setAttribute: ('xmlCategory') value: (recoveredValue8).
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (self) optionClass.
    recoveredValue11 := (recoveredValue10) class.
    recoveredValue12 := (recoveredValue11) asString.
    recoveredValue13 := (recoveredValue12) asEscapedString.
    (recoveredValue9) setAttribute: ('optionClass') value: (recoveredValue13).
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (self) optionFile.
    recoveredValue16 := (recoveredValue15) asEscapedString.
    (recoveredValue14) setAttribute: ('optionFile') value: (recoveredValue16).
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (self) optionClass.
    recoveredValue19 := (recoveredValue18) sensitive.
    recoveredValue20 := (recoveredValue19) asString.
    recoveredValue21 := (recoveredValue20) asEscapedString.
    (recoveredValue17) setAttribute: ('sensitive') value: (recoveredValue21).
    recoveredValue22 := recoveredArg2.
    recoveredValue23 := (self) optionClass.
    recoveredValue24 := (recoveredValue23) visible.
    recoveredValue25 := (recoveredValue24) asString.
    recoveredValue26 := (recoveredValue25) asEscapedString.
    (recoveredValue22) setAttribute: ('visible') value: (recoveredValue26).
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) createElement: ('Group').
    recoveredLocal2 := recoveredValue28.
    recoveredValue29 := (self) optionClass.
    recoveredValue30 := (recoveredValue29) group.
    recoveredValue31 := (recoveredValue30) asString.
    recoveredValue32 := recoveredLocal2.
    (self) writeValue: (recoveredValue31) toTag: (recoveredValue32).
    recoveredValue33 := recoveredArg2.
    recoveredValue34 := recoveredLocal2.
    (recoveredValue33) appendChild: (recoveredValue34).
    recoveredValue35 := recoveredArg1.
    recoveredValue36 := (recoveredValue35) createElement: ('Label').
    recoveredLocal2 := recoveredValue36.
    recoveredValue37 := (self) optionClass.
    recoveredValue38 := (recoveredValue37) label.
    recoveredValue39 := (recoveredValue38) asString.
    recoveredValue40 := recoveredLocal2.
    (self) writeValue: (recoveredValue39) toTag: (recoveredValue40).
    recoveredValue41 := recoveredArg2.
    recoveredValue42 := recoveredLocal2.
    (recoveredValue41) appendChild: (recoveredValue42).
    recoveredValue43 := recoveredArg1.
    recoveredValue44 := (recoveredValue43) createElement: ('Description').
    recoveredLocal2 := recoveredValue44.
    recoveredValue45 := (self) optionClass.
    recoveredValue46 := (recoveredValue45) description.
    recoveredValue47 := (recoveredValue46) asString.
    recoveredValue48 := recoveredLocal2.
    (self) writeValue: (recoveredValue47) toTag: (recoveredValue48).
    recoveredValue49 := recoveredArg2.
    recoveredValue50 := recoveredLocal2.
    (recoveredValue49) appendChild: (recoveredValue50).
    recoveredValue51 := recoveredArg1.
    recoveredValue52 := (recoveredValue51) createElement: ('Tooltip').
    recoveredLocal2 := recoveredValue52.
    recoveredValue53 := (self) optionClass.
    recoveredValue54 := (recoveredValue53) toolTip.
    recoveredValue55 := (recoveredValue54) asString.
    recoveredValue56 := recoveredLocal2.
    (self) writeValue: (recoveredValue55) toTag: (recoveredValue56).
    recoveredValue57 := recoveredArg2.
    recoveredValue58 := recoveredLocal2.
    (recoveredValue57) appendChild: (recoveredValue58).
    recoveredValue59 := recoveredArg1.
    recoveredValue60 := (recoveredValue59) createElement: ('InitialValue').
    recoveredLocal2 := recoveredValue60.
    recoveredValue61 := (self) optionClass.
    recoveredValue62 := (recoveredValue61) xmlValue.
    recoveredValue63 := (recoveredValue62) asString.
    recoveredValue64 := recoveredLocal2.
    (self) writeValue: (recoveredValue63) toTag: (recoveredValue64).
    recoveredValue65 := recoveredArg2.
    recoveredValue66 := recoveredLocal2.
    (recoveredValue65) appendChild: (recoveredValue66).
    recoveredValue67 := recoveredArg1.
    recoveredValue68 := (recoveredValue67) createElement: ('DefaultValue').
    recoveredLocal2 := recoveredValue68.
    recoveredValue69 := (self) optionClass.
    recoveredValue70 := (recoveredValue69) xmlDefault.
    recoveredValue71 := (recoveredValue70) asString.
    recoveredValue72 := recoveredLocal2.
    (self) writeValue: (recoveredValue71) toTag: (recoveredValue72).
    recoveredValue73 := recoveredArg2.
    recoveredValue74 := recoveredLocal2.
    (recoveredValue73) appendChild: (recoveredValue74).
    recoveredValue75 := recoveredArg1.
    recoveredValue76 := recoveredArg2.
    (self) writeSpecificDeclarationToXMLDocument: (recoveredValue75) optionTag: (recoveredValue76).
    ^self
! !

"ASDBase.ic method 0x20625f9c; bytecode file offset 0xf22918"
!EtasXMLOptionEntry methodsFor: 'recovered'!
writeSpecificDeclarationToXMLDocument: recoveredArg1 optionTag: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := EtasEnumerationOption.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := EtasEditableEnumerationOption.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasMultiSelectEnumerationOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasFixedEnumerationOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := optionClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'EnumerationOption'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'StringValues'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringCollection.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Local1 recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 recoveredBlock51Value7 |
    recoveredBlock51Value0 := recoveredArg1.
    recoveredBlock51Value1 := (recoveredBlock51Value0) createElement: ('StringValue').
    recoveredBlock51Local1 := recoveredBlock51Value1.
    recoveredBlock51Value2 := recoveredBlock51Arg1.
    recoveredBlock51Value3 := (recoveredBlock51Value2) asString.
    recoveredBlock51Value4 := recoveredBlock51Local1.
    (self) writeValue: (recoveredBlock51Value3) toTag: (recoveredBlock51Value4).
    recoveredBlock51Value5 := recoveredLocal2.
    recoveredBlock51Value6 := recoveredBlock51Local1.
    recoveredBlock51Value7 := (recoveredBlock51Value5) appendChild: (recoveredBlock51Value6).
    recoveredBlock51Value7
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := EtasFileOption.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := optionClass.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 398].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'FileOption'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) dialogTitle.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Stack0 recoveredBlock125Stack1 recoveredBlock125Stack2 recoveredBlock125Stack3 recoveredBlock125Stack4 recoveredBlock125PC recoveredBlock125Step recoveredBlock125Done recoveredBlock125Result |
    recoveredBlock125Stack0 := self.
    recoveredBlock125PC := 132.
    recoveredBlock125Done := false.
    [recoveredBlock125Done not] whileTrue: [
        recoveredBlock125Step := recoveredBlock125PC.
        recoveredBlock125Step = 132 ifTrue: [
            recoveredBlock125Stack1 := nil.
            recoveredBlock125PC := 133.
        ].
        recoveredBlock125Step = 133 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 134.
        ].
        recoveredBlock125Step = 134 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) notEmpty.
            recoveredBlock125PC := 136.
        ].
        recoveredBlock125Step = 136 ifTrue: [
            (recoveredBlock125Stack2) ifTrue: [recoveredBlock125PC := 140] ifFalse: [recoveredBlock125PC := 168].
        ].
        recoveredBlock125Step = 140 ifTrue: [
            recoveredBlock125PC := 141.
        ].
        recoveredBlock125Step = 141 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg1.
            recoveredBlock125PC := 144.
        ].
        recoveredBlock125Step = 144 ifTrue: [
            recoveredBlock125Stack2 := 'DialogTitle'.
            recoveredBlock125PC := 146.
        ].
        recoveredBlock125Step = 146 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) createElement: (recoveredBlock125Stack2).
            recoveredBlock125PC := 148.
        ].
        recoveredBlock125Step = 148 ifTrue: [
            recoveredLocal1 := recoveredBlock125Stack1.
            recoveredBlock125PC := 151.
        ].
        recoveredBlock125Step = 151 ifTrue: [
            recoveredBlock125Stack1 := self.
            recoveredBlock125PC := 152.
        ].
        recoveredBlock125Step = 152 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 153.
        ].
        recoveredBlock125Step = 153 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) asString.
            recoveredBlock125PC := 155.
        ].
        recoveredBlock125Step = 155 ifTrue: [
            recoveredBlock125Stack3 := recoveredLocal1.
            recoveredBlock125PC := 158.
        ].
        recoveredBlock125Step = 158 ifTrue: [
            (recoveredBlock125Stack1) writeValue: (recoveredBlock125Stack2) toTag: (recoveredBlock125Stack3).
            recoveredBlock125PC := 160.
        ].
        recoveredBlock125Step = 160 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal3.
            recoveredBlock125PC := 163.
        ].
        recoveredBlock125Step = 163 ifTrue: [
            recoveredBlock125Stack2 := recoveredLocal1.
            recoveredBlock125PC := 166.
        ].
        recoveredBlock125Step = 166 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) appendChild: (recoveredBlock125Stack2).
            recoveredBlock125PC := 168.
        ].
        recoveredBlock125Step = 168 ifTrue: [
            recoveredBlock125Result := recoveredBlock125Stack1.
            recoveredBlock125Done := true.
        ].
    ].
    recoveredBlock125Result
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchPath.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 211] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := 'SearchPath'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchPath.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) writeValue: (recoveredStack2) toTag: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchMask.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 251] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'SearchMask'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchMask.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) writeValue: (recoveredStack2) toTag: (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) invalidCharacters.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := 'InvalidCharacters'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := (recoveredStack2) invalidCharacters.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) writeValue: (recoveredStack2) toTag: (recoveredStack3).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) filterDictionary.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := [:recoveredBlock296Arg1 | 
    | recoveredBlock296Stack0 recoveredBlock296Stack1 recoveredBlock296Stack2 recoveredBlock296Stack3 recoveredBlock296PC recoveredBlock296Step recoveredBlock296Done recoveredBlock296Result |
    recoveredBlock296Stack0 := self.
    recoveredBlock296PC := 302.
    recoveredBlock296Done := false.
    [recoveredBlock296Done not] whileTrue: [
        recoveredBlock296Step := recoveredBlock296PC.
        recoveredBlock296Step = 302 ifTrue: [
            recoveredBlock296Stack1 := nil.
            recoveredBlock296PC := 303.
        ].
        recoveredBlock296Step = 303 ifTrue: [
            recoveredBlock296Stack2 := recoveredBlock296Arg1.
            recoveredBlock296PC := 304.
        ].
        recoveredBlock296Step = 304 ifTrue: [
            recoveredBlock296Stack2 := (recoveredBlock296Stack2) notEmpty.
            recoveredBlock296PC := 306.
        ].
        recoveredBlock296Step = 306 ifTrue: [
            (recoveredBlock296Stack2) ifTrue: [recoveredBlock296PC := 310] ifFalse: [recoveredBlock296PC := 385].
        ].
        recoveredBlock296Step = 310 ifTrue: [
            recoveredBlock296PC := 311.
        ].
        recoveredBlock296Step = 311 ifTrue: [
            recoveredBlock296Stack1 := recoveredArg1.
            recoveredBlock296PC := 314.
        ].
        recoveredBlock296Step = 314 ifTrue: [
            recoveredBlock296Stack2 := 'FilterTypes'.
            recoveredBlock296PC := 316.
        ].
        recoveredBlock296Step = 316 ifTrue: [
            recoveredBlock296Stack1 := (recoveredBlock296Stack1) createElement: (recoveredBlock296Stack2).
            recoveredBlock296PC := 318.
        ].
        recoveredBlock296Step = 318 ifTrue: [
            recoveredLocal2 := recoveredBlock296Stack1.
            recoveredBlock296PC := 321.
        ].
        recoveredBlock296Step = 321 ifTrue: [
            recoveredBlock296Stack1 := self.
            recoveredBlock296PC := 322.
        ].
        recoveredBlock296Step = 322 ifTrue: [
            recoveredBlock296Stack1 := (recoveredBlock296Stack1) optionClass.
            recoveredBlock296PC := 324.
        ].
        recoveredBlock296Step = 324 ifTrue: [
            recoveredBlock296Stack1 := (recoveredBlock296Stack1) filterDictionary.
            recoveredBlock296PC := 326.
        ].
        recoveredBlock296Step = 326 ifTrue: [
            recoveredBlock296Stack2 := [:recoveredBlock296Block326Arg1 :recoveredBlock296Block326Arg2 | 
    | recoveredBlock296Block326Local1 recoveredBlock296Block326Local2 recoveredBlock296Block326Value0 recoveredBlock296Block326Value1 recoveredBlock296Block326Value2 recoveredBlock296Block326Value3 recoveredBlock296Block326Value4 recoveredBlock296Block326Value5 recoveredBlock296Block326Value6 recoveredBlock296Block326Value7 recoveredBlock296Block326Value8 recoveredBlock296Block326Value9 recoveredBlock296Block326Value10 recoveredBlock296Block326Value11 recoveredBlock296Block326Value12 recoveredBlock296Block326Value13 recoveredBlock296Block326Value14 recoveredBlock296Block326Value15 |
    recoveredBlock296Block326Value0 := recoveredArg1.
    recoveredBlock296Block326Value1 := (recoveredBlock296Block326Value0) createElement: ('FilterType').
    recoveredBlock296Block326Local2 := recoveredBlock296Block326Value1.
    recoveredBlock296Block326Value2 := recoveredBlock296Block326Local2.
    recoveredBlock296Block326Value3 := recoveredBlock296Block326Arg1.
    recoveredBlock296Block326Value4 := (recoveredBlock296Block326Value3) asString.
    recoveredBlock296Block326Value5 := (recoveredBlock296Block326Value4) abtXmlPrintString.
    (recoveredBlock296Block326Value2) setAttribute: ('extension') value: (recoveredBlock296Block326Value5).
    recoveredBlock296Block326Value6 := recoveredArg1.
    recoveredBlock296Block326Value7 := (recoveredBlock296Block326Value6) createElement: ('Description').
    recoveredBlock296Block326Local1 := recoveredBlock296Block326Value7.
    recoveredBlock296Block326Value8 := recoveredBlock296Block326Arg2.
    recoveredBlock296Block326Value9 := (recoveredBlock296Block326Value8) asString.
    recoveredBlock296Block326Value10 := recoveredBlock296Block326Local1.
    (self) writeValue: (recoveredBlock296Block326Value9) toTag: (recoveredBlock296Block326Value10).
    recoveredBlock296Block326Value11 := recoveredBlock296Block326Local2.
    recoveredBlock296Block326Value12 := recoveredBlock296Block326Local1.
    (recoveredBlock296Block326Value11) appendChild: (recoveredBlock296Block326Value12).
    recoveredBlock296Block326Value13 := recoveredLocal2.
    recoveredBlock296Block326Value14 := recoveredBlock296Block326Local2.
    recoveredBlock296Block326Value15 := (recoveredBlock296Block326Value13) appendChild: (recoveredBlock296Block326Value14).
    recoveredBlock296Block326Value15
].
            recoveredBlock296PC := 375.
        ].
        recoveredBlock296Step = 375 ifTrue: [
            (recoveredBlock296Stack1) keysAndValuesDo: (recoveredBlock296Stack2).
            recoveredBlock296PC := 377.
        ].
        recoveredBlock296Step = 377 ifTrue: [
            recoveredBlock296Stack1 := recoveredLocal3.
            recoveredBlock296PC := 380.
        ].
        recoveredBlock296Step = 380 ifTrue: [
            recoveredBlock296Stack2 := recoveredLocal2.
            recoveredBlock296PC := 383.
        ].
        recoveredBlock296Step = 383 ifTrue: [
            recoveredBlock296Stack1 := (recoveredBlock296Stack1) appendChild: (recoveredBlock296Stack2).
            recoveredBlock296PC := 385.
        ].
        recoveredBlock296Step = 385 ifTrue: [
            recoveredBlock296Result := recoveredBlock296Stack1.
            recoveredBlock296Done := true.
        ].
    ].
    recoveredBlock296Result
].
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := EtasButtonOption.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := optionClass.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 480].
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := 'ButtonOption'.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack2 := 'Action'.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := (recoveredStack1) action.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 438] ifFalse: [recoveredPC := 454].
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := (recoveredStack2) action.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack1) writeValue: (recoveredStack2) toTag: (recoveredStack3).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredPC := 462.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack1) writeValue: (recoveredStack2) toTag: (recoveredStack3).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := EtasNumericOption.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack2 := optionClass.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 490] ifFalse: [recoveredPC := 572].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := 'NumericOption'.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack2 := 'MinValue'.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := (recoveredStack2) min.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack1) writeValue: (recoveredStack2) toTag: (recoveredStack3).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := 'MaxValue'.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionClass.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := (recoveredStack2) max.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            (recoveredStack1) writeValue: (recoveredStack2) toTag: (recoveredStack3).
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 572 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

