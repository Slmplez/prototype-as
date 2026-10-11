"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200267d0; bytecode file offset 0x923928"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
autostartBehaviorEnums
    | recoveredValue0 |
    recoveredValue0 := (LookupTable new) elementCount: (3); keyArray: (#('ALWAYS_RP' nil nil nil 'LAST_ACTIVE_PAGE' nil nil 'ALWAYS_WP' nil nil nil)); valueArray: (#(2 nil nil nil 0 nil nil 1 nil nil nil)); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003ab38; bytecode file offset 0x938608"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
parse: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) parseStruct: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004aefc; bytecode file offset 0x947a60"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b45c; bytecode file offset 0x947d20"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
startAddress
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b590; bytecode file offset 0x947ec0"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
maxLength
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b5e4; bytecode file offset 0x947ec0"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b7d8; bytecode file offset 0x948384"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
autostartBehavior
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a5d88; bytecode file offset 0x9a27f0"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a60e0; bytecode file offset 0x9a2a28"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
startAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6188; bytecode file offset 0x9a2b84"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
maxLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a61f4; bytecode file offset 0x9a2b84"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a65fc; bytecode file offset 0x9a2f38"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
autostartBehavior: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fd790; bytecode file offset 0x9fa1f4"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
getVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) version: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011d880; bytecode file offset 0xa1a2f8"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putVersionIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putStartAddressIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putLengthIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20163a98; bytecode file offset 0xa605cc"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putParameterIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putOptionsIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20163c18; bytecode file offset 0xa605cc"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) getVersion: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getStartAddress: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getLength: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) parse: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202a59c0; bytecode file offset 0xba22c4"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
getAutostartBehavior: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) autostartBehaviorEnums.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getString: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := SCASAP2MissingEnumValue.
    recoveredBlock15Value1 := recoveredLocal1.
    recoveredBlock15Value2 := (self) autostartBehaviorEnums.
    recoveredBlock15Value3 := (recoveredBlock15Value2) keys.
    recoveredBlock15Value4 := (recoveredBlock15Value3) printString.
    recoveredBlock15Value5 := (recoveredBlock15Value0) bindWith: (recoveredBlock15Value1) with: (recoveredBlock15Value4).
    (self) monitorWarning: (recoveredBlock15Value5).
    0
].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue4).
    (self) autostartBehavior: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202d0be0; bytecode file offset 0xbcd4d4"
!ASAP2OverlayConfigTab methodsFor: 'recovered'!
putIn: recoveredArg1 autostartBehavior: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autostartBehavior.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) autostartBehaviorEnums.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) autostartBehavior.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 |
    recoveredBlock29Value0 := (self) autostartBehavior.
    recoveredBlock29Value1 := (recoveredBlock29Value0) asString.
    recoveredBlock29Value1
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyAtValue: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) putNewLineIn: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

