"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x200003d8; bytecode file offset 0xf784"
!AbtNlsKernelGraphicsSupportApp class methodsFor: 'recovered'!
preStartUp
    (self) installNlsGraphicsSupport.
    ^self
! !

"abtdau.ic method 0x200003f0; bytecode file offset 0xf784"
!AbtNlsKernelGraphicsSupportApp class methodsFor: 'recovered'!
removing
    (self) removeNlsGraphicsSupport.
    ^self
! !

"abtdau.ic method 0x200003fc; bytecode file offset 0xf784"
!AbtNlsKernelGraphicsSupportApp class methodsFor: 'recovered'!
failedRemove
    (self) installNlsGraphicsSupport.
    ^self
! !

"abtdau.ic method 0x20000408; bytecode file offset 0xf784"
!AbtNlsKernelGraphicsSupportApp class methodsFor: 'recovered'!
loaded
    (self) installNlsGraphicsSupport.
    ^self
! !

"abtdau.ic method 0x20002898; bytecode file offset 0x11c34"
!AbtNlsKernelGraphicsSupportApp class methodsFor: 'recovered'!
removeNlsGraphicsSupport
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := OSUInt64.
    recoveredValue2 := (recoveredValue1) selector: ('getCurrentCharacterSetFromFontInformation') arguments: (#()) receiver: (self).
    (recoveredValue0) removeCharsetQuery: (recoveredValue2).
    recoveredValue3 := AbtMRI.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) restoreDefaultDisplayStringSelector.
    (recoveredValue3) restoreDefaultMessageHelpBlockSelector.
    recoveredValue5 := AbtNlsKrnConstants.
    (recoveredValue5) at: ('AbtNlsKrnShadowOfXmYESNO') put: (nil).
    ^self
! !

"abtdau.ic method 0x20002d60; bytecode file offset 0x12108"
!AbtNlsKernelGraphicsSupportApp class methodsFor: 'recovered'!
installNlsGraphicsSupport
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := OSUInt64.
    recoveredValue2 := (recoveredValue1) selector: ('getCurrentCharacterSetFromFontInformation') arguments: (#()) receiver: (self).
    (recoveredValue0) addCharsetQuery: (recoveredValue2).
    recoveredValue3 := AbtMRI.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) displayStringSelector: ('cwDisplaySimpleString:buttonType:').
    (recoveredValue3) messageHelpBlockSelector: ('cwMessageHelpBlock:').
    recoveredValue5 := AbtNlsKrnConstants.
    recoveredValue6 := XKSerbianlje.
    (recoveredValue5) at: ('AbtNlsKrnShadowOfXmYESNO') put: (recoveredValue6).
    ^self
! !

"abtdau.ic method 0x200037b4; bytecode file offset 0x12b54"
!AbtNlsKernelGraphicsSupportApp class methodsFor: 'recovered'!
getCurrentCharacterSetFromFontInformation
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenuCascadeButton.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := CwOleClipboardOwner.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultFontStruct.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterSet.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := '*-*'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeSet.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

