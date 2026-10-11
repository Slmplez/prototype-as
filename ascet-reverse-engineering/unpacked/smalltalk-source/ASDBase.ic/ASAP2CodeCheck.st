"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c8e0; bytecode file offset 0x92209c"
!ASAP2CodeCheck methodsFor: 'recovered'!
errorBehaviorEnums
    | recoveredValue0 |
    recoveredValue0 := (LookupTable new) elementCount: (2); keyArray: (#('NO_RESET' nil nil nil 'PERMANENT_RESET' nil nil nil nil nil nil)); valueArray: (#(1 nil nil nil 0 nil nil nil nil nil nil)); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003ad24; bytecode file offset 0x938608"
!ASAP2CodeCheck methodsFor: 'recovered'!
parse: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) parseStruct: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004b97c; bytecode file offset 0x948384"
!ASAP2CodeCheck methodsFor: 'recovered'!
dataChecksum
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004be7c; bytecode file offset 0x94877c"
!ASAP2CodeCheck methodsFor: 'recovered'!
dataLength
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c07c; bytecode file offset 0x948b80"
!ASAP2CodeCheck methodsFor: 'recovered'!
eramChecksum
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c45c; bytecode file offset 0x948e28"
!ASAP2CodeCheck methodsFor: 'recovered'!
eramLength
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a6428; bytecode file offset 0x9a2f38"
!ASAP2CodeCheck methodsFor: 'recovered'!
dataChecksum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6a04; bytecode file offset 0x9a32e0"
!ASAP2CodeCheck methodsFor: 'recovered'!
dataLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6c38; bytecode file offset 0x9a3694"
!ASAP2CodeCheck methodsFor: 'recovered'!
eramChecksum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6e54; bytecode file offset 0x9a391c"
!ASAP2CodeCheck methodsFor: 'recovered'!
eramLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fb200; bytecode file offset 0x9f7ee4"
!ASAP2CodeCheck methodsFor: 'recovered'!
putDataChecksumIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) dataChecksum.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb264; bytecode file offset 0x9f7ee4"
!ASAP2CodeCheck methodsFor: 'recovered'!
putEramChecksumIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) eramChecksum.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb458; bytecode file offset 0x9f7ee4"
!ASAP2CodeCheck methodsFor: 'recovered'!
putDataLengthIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) dataLength.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb5d4; bytecode file offset 0x9f7ee4"
!ASAP2CodeCheck methodsFor: 'recovered'!
putEramLengthIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) eramLength.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd6b4; bytecode file offset 0x9fa1f4"
!ASAP2CodeCheck methodsFor: 'recovered'!
getEramLength: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) eramLength: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd7f4; bytecode file offset 0x9fa1f4"
!ASAP2CodeCheck methodsFor: 'recovered'!
getDataChecksum: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) dataChecksum: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd808; bytecode file offset 0x9fa1f4"
!ASAP2CodeCheck methodsFor: 'recovered'!
getEramChecksum: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) eramChecksum: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd894; bytecode file offset 0x9fa1f4"
!ASAP2CodeCheck methodsFor: 'recovered'!
getDataLength: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) dataLength: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2013f4b8; bytecode file offset 0xa3bd74"
!ASAP2CodeCheck methodsFor: 'recovered'!
errorBehavior
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
            recoveredStack1 := 7.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015581c; bytecode file offset 0xa520d8"
!ASAP2CodeCheck methodsFor: 'recovered'!
errorBehavior: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
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

"ASDBase.ic method 0x20163ab0; bytecode file offset 0xa605cc"
!ASAP2CodeCheck methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20163b40; bytecode file offset 0xa605cc"
!ASAP2CodeCheck methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putDataChecksumIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putDataLengthIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putEramChecksumIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putEramLengthIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201e595c; bytecode file offset 0xae2268"
!ASAP2CodeCheck methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getDataChecksum: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getDataLength: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getEramChecksum: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getEramLength: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) parse: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202a59ec; bytecode file offset 0xba22c4"
!ASAP2CodeCheck methodsFor: 'recovered'!
getErrorBehavior: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorBehaviorEnums.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getString: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := SCASAP2MissingEnumValue.
    recoveredBlock15Value1 := recoveredLocal1.
    recoveredBlock15Value2 := (self) errorBehaviorEnums.
    recoveredBlock15Value3 := (recoveredBlock15Value2) keys.
    recoveredBlock15Value4 := (recoveredBlock15Value3) printString.
    recoveredBlock15Value5 := (recoveredBlock15Value0) bindWith: (recoveredBlock15Value1) with: (recoveredBlock15Value4).
    (self) monitorWarning: (recoveredBlock15Value5).
    0
].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue4).
    (self) errorBehavior: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202d0c04; bytecode file offset 0xbcd4d4"
!ASAP2CodeCheck methodsFor: 'recovered'!
putIn: recoveredArg1 errorBehavior: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorBehavior.
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
            recoveredStack3 := (recoveredStack3) errorBehaviorEnums.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) errorBehavior.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 |
    recoveredBlock29Value0 := (self) errorBehavior.
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

