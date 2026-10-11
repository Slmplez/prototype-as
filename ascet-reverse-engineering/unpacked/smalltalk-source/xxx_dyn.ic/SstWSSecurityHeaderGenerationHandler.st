"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200156ac; bytecode file offset 0x76794"
!SstWSSecurityHeaderGenerationHandler methodsFor: 'recovered'!
newElementNamed: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) container.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializationManager.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) schemaNamespace.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := SstSoapMappedElement.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlName: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := SstSoapMappedElement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) newMappedElement: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x200165e4; bytecode file offset 0x776dc"
!SstWSSecurityHeaderGenerationHandler methodsFor: 'recovered'!
newCreationDateElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SstSoapMappedElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) abtXmlName: ('wsu:Created').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) nameSpaceURI: ('http://schemas.xmlsoap.org/ws/2002/07/utility').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := AbtXmlObjectCache.
    recoveredValue6 := (recoveredValue5) current.
    recoveredValue7 := AbtXmlSchemaDateTimeString.
    recoveredValue8 := (recoveredValue6) typeNamed: (recoveredValue7) inNamespace: (nil).
    (recoveredValue4) type: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) declarePrefix: ('wsu') uri: ('http://schemas.xmlsoap.org/ws/2002/07/utility').
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200169ac; bytecode file offset 0x77a8c"
!SstWSSecurityHeaderGenerationHandler methodsFor: 'recovered'!
newPasswordElementFor: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Password'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) newElementNamed: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) nonce.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) created.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'wsse:PasswordDigest'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) Type: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'wsse:PasswordText'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) Type: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20019118; bytecode file offset 0x7a20c"
!SstWSSecurityHeaderGenerationHandler methodsFor: 'recovered'!
newSecurityHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) container.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializationManager.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Security'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) schemaNamespace.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'Security header could not be built.  Verify schema is available in container'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := SstSoapMappedElement.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) newMappedElement: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'wsse'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) schemaNamespace.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) declarePrefix: (recoveredStack2) uri: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20029b40; bytecode file offset 0x8ac54"
!SstWSSecurityHeaderGenerationHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := WSService.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) propertyNamed: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstUsernameToken.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) newSecurityHeader: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'UsernameToken'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) newElementNamed: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) username.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) Username: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) nonce.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'Nonce'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) newElementNamed: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'wsse:Base64Binary'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) EncodingType: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) nonce.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) object: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) addElement: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) created.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) newCreationDateElement: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) created.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) object: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) addElement: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) password.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) newPasswordElementFor: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) password.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) object: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) addElement: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) addElement: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMessage.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) addHeaderElement: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

