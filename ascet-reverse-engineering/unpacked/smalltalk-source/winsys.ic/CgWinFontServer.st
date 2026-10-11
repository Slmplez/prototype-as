"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200009d4; bytecode file offset 0x7cc7c"
!CgWinFontServer methodsFor: 'recovered'!
fontResourceClass
    | recoveredValue0 |
    recoveredValue0 := CgWinFontResource.
    ^recoveredValue0
! !

"winsys.ic method 0x20001198; bytecode file offset 0x7d368"
!CgWinFontServer methodsFor: 'recovered'!
createOSFont: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) createFontIndirect.
    ^recoveredValue1
! !

"winsys.ic method 0x20002e38; bytecode file offset 0x7f220"
!CgWinFontServer methodsFor: 'recovered'!
logfontAliases
    | recoveredValue0 |
    recoveredValue0 := logfontAliases.
    ^recoveredValue0
! !

"winsys.ic method 0x2000767c; bytecode file offset 0x838d4"
!CgWinFontServer methodsFor: 'recovered'!
logfontAliases: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    logfontAliases := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008a18; bytecode file offset 0x84be4"
!CgWinFontServer methodsFor: 'recovered'!
defineFontAlias: recoveredArg1 logFont: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) logfontAliases.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asLowercase.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x2000a680; bytecode file offset 0x8684c"
!CgWinFontServer methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initialize: (recoveredValue0).
    (self) initializeAliases.
    ^self
! !

"winsys.ic method 0x2000e2c4; bytecode file offset 0x8a498"
!CgWinFontServer methodsFor: 'recovered'!
defaultFont
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) server.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) stockObjects.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) systemFont.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFontResource: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) shouldNotBeFreed.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20013ea8; bytecode file offset 0x90088"
!CgWinFontServer methodsFor: 'recovered'!
addDefaultFont: recoveredArg1 dc: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) server.
    recoveredValue1 := (recoveredValue0) defaultFont.
    recoveredValue2 := (recoveredValue1) handle.
    recoveredValue3 := (self) nameFromOSFont: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := Array.
    recoveredValue7 := (self) server.
    recoveredValue8 := (recoveredValue7) defaultFont.
    recoveredValue9 := (recoveredValue8) logFont.
    recoveredValue10 := (recoveredValue6) with: (false) with: (recoveredValue9).
    recoveredValue11 := (recoveredValue4) at: (recoveredValue5) put: (recoveredValue10).
    ^recoveredValue11
! !

"winsys.ic method 0x2001ba94; bytecode file offset 0x97c84"
!CgWinFontServer methodsFor: 'recovered'!
initializeAliases
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) logfontAliases: (recoveredValue1).
    recoveredValue2 := OSLogfont.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) lfWidth: (8).
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) lfHeight: (14).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := FixedPitch.
    (recoveredValue6) lfPitchAndFamily: (recoveredValue7).
    recoveredValue8 := (recoveredValue3) lfFaceName: ('Courier New').
    (self) defineFontAlias: ('8x13') logFont: (recoveredValue8).
    ^self
! !

"winsys.ic method 0x20020034; bytecode file offset 0x9c218"
!CgWinFontServer methodsFor: 'recovered'!
nameFromOSFont: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OSLogfont.
    recoveredValue2 := (recoveredValue1) fixedSize.
    recoveredValue3 := OSLogfont.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal4 := recoveredValue5.
    (recoveredValue0) getObject: (recoveredValue2) lpvObject: (recoveredValue4).
    recoveredValue6 := server.
    recoveredValue7 := (recoveredValue6) deviceContext.
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) selectObject: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := OSTextmetric.
    recoveredValue13 := (recoveredValue12) new.
    recoveredValue14 := recoveredValue13.
    recoveredLocal3 := recoveredValue14.
    (recoveredValue11) getTextMetrics: (recoveredValue13).
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue15) selectObject: (recoveredValue16).
    recoveredValue17 := recoveredLocal4.
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := (self) nameFromLogFont: (recoveredValue17) textMetric: (recoveredValue18) scalable: (false).
    ^recoveredValue19
! !

"winsys.ic method 0x20028e20; bytecode file offset 0xa5008"
!CgWinFontServer methodsFor: 'recovered'!
scaledLogFont: recoveredArg1 vals: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := OSLogfont.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := OSLogfont.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3) into: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) lfHeight.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) lfWidth.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) pixel.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) lfWidth: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) pixel.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) lfHeight: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2003afe4; bytecode file offset 0xb7214"
!CgWinFontServer methodsFor: 'recovered'!
createFontDirectory
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := (self) server.
    recoveredValue3 := (recoveredValue2) deviceContext.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) enumFontFamilies: (recoveredValue4) familyName: (nil).
    recoveredValue6 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 |
    recoveredBlock22Value0 := recoveredLocal6.
    recoveredBlock22Value1 := PlatformString.
    recoveredBlock22Value2 := recoveredBlock22Arg1.
    recoveredBlock22Value3 := (recoveredBlock22Value2) logFont.
    recoveredBlock22Value4 := (recoveredBlock22Value3) lfFaceName.
    recoveredBlock22Value5 := (recoveredBlock22Value4) trimNull.
    recoveredBlock22Value6 := (recoveredBlock22Value1) fromString: (recoveredBlock22Value5).
    recoveredBlock22Value7 := (recoveredBlock22Value6) asString.
    recoveredBlock22Value8 := (recoveredBlock22Value0) add: (recoveredBlock22Value7).
    recoveredBlock22Value8
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := Dictionary.
    recoveredValue8 := recoveredLocal6.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := (recoveredValue9) * (4).
    recoveredValue11 := (recoveredValue7) new: (recoveredValue10).
    recoveredLocal5 := recoveredValue11.
    recoveredValue12 := recoveredLocal6.
    recoveredValue13 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 |
    recoveredBlock67Value0 := recoveredLocal5.
    recoveredBlock67Value1 := recoveredBlock67Arg1.
    recoveredBlock67Value2 := recoveredLocal1.
    recoveredBlock67Value3 := (self) addAllEntries: (recoveredBlock67Value0) familyName: (recoveredBlock67Value1) dc: (recoveredBlock67Value2).
    recoveredBlock67Value3
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := recoveredLocal5.
    recoveredValue15 := recoveredLocal1.
    (self) addDefaultFont: (recoveredValue14) dc: (recoveredValue15).
    recoveredValue16 := CgFontDirectory.
    recoveredValue17 := (self) server.
    recoveredValue18 := (recoveredValue16) new: (recoveredValue17) directory: (nil) size: (100).
    recoveredLocal4 := recoveredValue18.
    recoveredValue19 := recoveredLocal5.
    recoveredValue20 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Value0 recoveredBlock113Value1 recoveredBlock113Value2 recoveredBlock113Value3 recoveredBlock113Value4 recoveredBlock113Value5 recoveredBlock113Value6 recoveredBlock113Value7 recoveredBlock113Value8 recoveredBlock113Value9 recoveredBlock113Value10 |
    recoveredBlock113Value0 := recoveredBlock113Arg1.
    recoveredBlock113Value1 := (recoveredBlock113Value0) key.
    recoveredLocal3 := recoveredBlock113Value1.
    recoveredBlock113Value2 := recoveredBlock113Arg1.
    recoveredBlock113Value3 := (recoveredBlock113Value2) value.
    recoveredLocal2 := recoveredBlock113Value3.
    recoveredBlock113Value4 := recoveredLocal4.
    recoveredBlock113Value5 := recoveredLocal3.
    recoveredBlock113Value6 := recoveredLocal2.
    recoveredBlock113Value7 := (recoveredBlock113Value6) at: (2).
    recoveredBlock113Value8 := recoveredLocal2.
    recoveredBlock113Value9 := (recoveredBlock113Value8) at: (1).
    recoveredBlock113Value10 := (recoveredBlock113Value4) add: (recoveredBlock113Value5) fileName: (recoveredBlock113Value7) renderer: (self) addScalable: (recoveredBlock113Value9).
    recoveredBlock113Value10
].
    (recoveredValue19) associationsDo: (recoveredValue20).
    recoveredValue21 := (self) logfontAliases.
    recoveredValue22 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Value0 recoveredBlock162Value1 recoveredBlock162Value2 recoveredBlock162Value3 recoveredBlock162Value4 recoveredBlock162Value5 |
    recoveredBlock162Value0 := recoveredLocal4.
    recoveredBlock162Value1 := recoveredBlock162Arg1.
    recoveredBlock162Value2 := (recoveredBlock162Value1) key.
    recoveredBlock162Value3 := recoveredBlock162Arg1.
    recoveredBlock162Value4 := (recoveredBlock162Value3) value.
    recoveredBlock162Value5 := (recoveredBlock162Value0) add: (recoveredBlock162Value2) fileName: (recoveredBlock162Value4) renderer: (self).
    recoveredBlock162Value5
].
    (recoveredValue21) associationsDo: (recoveredValue22).
    recoveredValue23 := recoveredLocal4.
    (recoveredValue23) sort.
    recoveredValue24 := recoveredLocal4.
    ^recoveredValue24
! !

"winsys.ic method 0x2003b120; bytecode file offset 0xb7358"
!CgWinFontServer methodsFor: 'recovered'!
enumFontFamilies: recoveredArg1 familyName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PlatformFunction.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'c'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'EsEnumFontFamilies'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := #('uint32' 'pointer').
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack6 := 'uint32'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) language: (recoveredStack2) function: (recoveredStack3) library: (recoveredStack4) parameterTypes: (recoveredStack5) returnType: (recoveredStack6).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := OSHglobal.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) asParameter.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) callWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) immediate: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := OSUInt8.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalLock.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint32At: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := OSLogfont.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := OSNewtextmetric.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := CgFontInfo.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) uint32At: (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) fontType: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := OSLogfont.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack7 := recoveredLocal5.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) memcpyFrom: (recoveredStack5) to: (recoveredStack6).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) reference: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) logFont: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := OSNewtextmetric.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := (recoveredStack4) memcpyFrom: (recoveredStack5) to: (recoveredStack6).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := (recoveredStack3) reference: (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) textMetric: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 102] ifFalse: [recoveredLocal1 := nil. recoveredPC := 182]] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) globalUnlock.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) globalFree.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200409e0; bytecode file offset 0xbcc24"
!CgWinFontServer methodsFor: 'recovered'!
addAllEntries: recoveredArg1 familyName: recoveredArg2 dc: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) enumFontFamilies: (recoveredValue2) familyName: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 recoveredBlock18Value8 recoveredBlock18Value9 recoveredBlock18Value10 recoveredBlock18Value11 recoveredBlock18Value12 recoveredBlock18Value13 recoveredBlock18Value14 recoveredBlock18Value15 recoveredBlock18Value16 recoveredBlock18Value17 recoveredBlock18Value18 recoveredBlock18Value19 recoveredBlock18Value20 recoveredBlock18Value21 recoveredBlock18Value22 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) logFont.
    recoveredLocal4 := recoveredBlock18Value1.
    recoveredBlock18Value2 := Array.
    recoveredBlock18Value3 := (recoveredBlock18Value2) new: (5).
    recoveredBlock18Value4 := recoveredBlock18Value3.
    recoveredLocal3 := recoveredBlock18Value4.
    recoveredBlock18Value5 := recoveredBlock18Value3.
    recoveredBlock18Value6 := recoveredBlock18Arg1.
    recoveredBlock18Value7 := (recoveredBlock18Value6) fontType.
    (recoveredBlock18Value5) at: (1) put: (recoveredBlock18Value7).
    recoveredBlock18Value8 := recoveredBlock18Value3.
    recoveredBlock18Value9 := recoveredLocal4.
    recoveredBlock18Value10 := (recoveredBlock18Value9) lfWidth.
    (recoveredBlock18Value8) at: (2) put: (recoveredBlock18Value10).
    recoveredBlock18Value11 := recoveredBlock18Value3.
    recoveredBlock18Value12 := recoveredLocal4.
    recoveredBlock18Value13 := (recoveredBlock18Value12) lfHeight.
    (recoveredBlock18Value11) at: (3) put: (recoveredBlock18Value13).
    recoveredBlock18Value14 := recoveredBlock18Value3.
    recoveredBlock18Value15 := recoveredLocal4.
    recoveredBlock18Value16 := (recoveredBlock18Value15) lfCharSet.
    (recoveredBlock18Value14) at: (4) put: (recoveredBlock18Value16).
    recoveredBlock18Value17 := recoveredLocal4.
    recoveredBlock18Value18 := (recoveredBlock18Value17) lfPitchAndFamily.
    (recoveredBlock18Value3) at: (5) put: (recoveredBlock18Value18).
    recoveredBlock18Value19 := recoveredLocal5.
    recoveredBlock18Value20 := [:recoveredBlock18Block93Arg1 | 
    | recoveredBlock18Block93Value0 recoveredBlock18Block93Value1 recoveredBlock18Block93Value2 recoveredBlock18Block93Value3 |
    recoveredBlock18Block93Value0 := recoveredBlock18Block93Arg1.
    recoveredBlock18Block93Value1 := (recoveredBlock18Block93Value0) at: (1).
    recoveredBlock18Block93Value2 := recoveredLocal3.
    recoveredBlock18Block93Value3 := (recoveredBlock18Block93Value1) = (recoveredBlock18Block93Value2).
    recoveredBlock18Block93Value3
].
    recoveredBlock18Value21 := [
    | recoveredBlock18Block110Value0 recoveredBlock18Block110Value1 recoveredBlock18Block110Value2 recoveredBlock18Block110Value3 recoveredBlock18Block110Value4 recoveredBlock18Block110Value5 recoveredBlock18Block110Value6 |
    recoveredBlock18Block110Value0 := recoveredLocal5.
    recoveredBlock18Block110Value1 := Array.
    recoveredBlock18Block110Value2 := recoveredLocal3.
    recoveredBlock18Block110Value3 := recoveredBlock18Arg1.
    recoveredBlock18Block110Value4 := (recoveredBlock18Block110Value3) textMetric.
    recoveredBlock18Block110Value5 := (recoveredBlock18Block110Value1) with: (recoveredBlock18Block110Value2) with: (recoveredBlock18Block110Value4).
    recoveredBlock18Block110Value6 := (recoveredBlock18Block110Value0) add: (recoveredBlock18Block110Value5).
    recoveredBlock18Block110Value6
].
    recoveredBlock18Value22 := (recoveredBlock18Value19) detect: (recoveredBlock18Value20) ifNone: (recoveredBlock18Value21).
    recoveredBlock18Value22
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal5.
    recoveredValue7 := [:recoveredBlock142Arg1 | 
    | recoveredBlock142Value0 recoveredBlock142Value1 recoveredBlock142Value2 recoveredBlock142Value3 recoveredBlock142Value4 recoveredBlock142Value5 |
    recoveredBlock142Value0 := recoveredBlock142Arg1.
    recoveredBlock142Value1 := (recoveredBlock142Value0) at: (1).
    recoveredLocal3 := recoveredBlock142Value1.
    recoveredBlock142Value2 := recoveredLocal3.
    recoveredBlock142Value3 := (recoveredBlock142Value2) at: (1).
    recoveredLocal1 := recoveredBlock142Value3.
    recoveredBlock142Value4 := [:recoveredBlock142Block170Arg1 | 
    | recoveredBlock142Block170Value0 recoveredBlock142Block170Value1 |
    recoveredBlock142Block170Value0 := [:recoveredBlock142Block170Block178Arg1 | 
    | recoveredBlock142Block170Block178Value0 recoveredBlock142Block170Block178Value1 recoveredBlock142Block170Block178Value2 recoveredBlock142Block170Block178Value3 recoveredBlock142Block170Block178Value4 recoveredBlock142Block170Block178Value5 recoveredBlock142Block170Block178Value6 recoveredBlock142Block170Block178Value7 recoveredBlock142Block170Block178Value8 recoveredBlock142Block170Block178Value9 recoveredBlock142Block170Block178Value10 recoveredBlock142Block170Block178Value11 recoveredBlock142Block170Block178Value12 recoveredBlock142Block170Block178Value13 recoveredBlock142Block170Block178Value14 recoveredBlock142Block170Block178Value15 recoveredBlock142Block170Block178Value16 recoveredBlock142Block170Block178Value17 recoveredBlock142Block170Block178Value18 recoveredBlock142Block170Block178Value19 recoveredBlock142Block170Block178Value20 recoveredBlock142Block170Block178Value21 recoveredBlock142Block170Block178Value22 recoveredBlock142Block170Block178Value23 recoveredBlock142Block170Block178Value24 recoveredBlock142Block170Block178Value25 recoveredBlock142Block170Block178Value26 recoveredBlock142Block170Block178Value27 recoveredBlock142Block170Block178Value28 recoveredBlock142Block170Block178Value29 recoveredBlock142Block170Block178Value30 recoveredBlock142Block170Block178Value31 recoveredBlock142Block170Block178Value32 recoveredBlock142Block170Block178Value33 recoveredBlock142Block170Block178Value34 recoveredBlock142Block170Block178Value35 recoveredBlock142Block170Block178Value36 recoveredBlock142Block170Block178Value37 |
    recoveredBlock142Block170Block178Value0 := OSLogfont.
    recoveredBlock142Block170Block178Value1 := (recoveredBlock142Block170Block178Value0) new.
    recoveredBlock142Block170Block178Value2 := recoveredBlock142Block170Block178Value1.
    recoveredLocal4 := recoveredBlock142Block170Block178Value2.
    recoveredBlock142Block170Block178Value3 := recoveredBlock142Block170Block178Value1.
    recoveredBlock142Block170Block178Value4 := PlatformString.
    recoveredBlock142Block170Block178Value5 := recoveredArg2.
    recoveredBlock142Block170Block178Value6 := (recoveredBlock142Block170Block178Value4) fromString: (recoveredBlock142Block170Block178Value5).
    (recoveredBlock142Block170Block178Value3) lfFaceName: (recoveredBlock142Block170Block178Value6).
    recoveredBlock142Block170Block178Value7 := recoveredBlock142Block170Block178Value1.
    recoveredBlock142Block170Block178Value8 := recoveredLocal3.
    recoveredBlock142Block170Block178Value9 := (recoveredBlock142Block170Block178Value8) at: (2).
    (recoveredBlock142Block170Block178Value7) lfWidth: (recoveredBlock142Block170Block178Value9).
    recoveredBlock142Block170Block178Value10 := recoveredBlock142Block170Block178Value1.
    recoveredBlock142Block170Block178Value11 := recoveredLocal3.
    recoveredBlock142Block170Block178Value12 := (recoveredBlock142Block170Block178Value11) at: (3).
    (recoveredBlock142Block170Block178Value10) lfHeight: (recoveredBlock142Block170Block178Value12).
    recoveredBlock142Block170Block178Value13 := recoveredBlock142Block170Block178Value1.
    recoveredBlock142Block170Block178Value14 := recoveredLocal3.
    recoveredBlock142Block170Block178Value15 := (recoveredBlock142Block170Block178Value14) at: (4).
    (recoveredBlock142Block170Block178Value13) lfCharSet: (recoveredBlock142Block170Block178Value15).
    recoveredBlock142Block170Block178Value16 := recoveredBlock142Block170Block178Value1.
    recoveredBlock142Block170Block178Value17 := recoveredLocal3.
    recoveredBlock142Block170Block178Value18 := (recoveredBlock142Block170Block178Value17) at: (5).
    (recoveredBlock142Block170Block178Value16) lfPitchAndFamily: (recoveredBlock142Block170Block178Value18).
    recoveredBlock142Block170Block178Value19 := recoveredBlock142Block170Block178Value1.
    recoveredBlock142Block170Block178Value20 := recoveredBlock142Block170Arg1.
    (recoveredBlock142Block170Block178Value19) lfWeight: (recoveredBlock142Block170Block178Value20).
    recoveredBlock142Block170Block178Value21 := recoveredBlock142Block170Block178Arg1.
    (recoveredBlock142Block170Block178Value1) lfItalic: (recoveredBlock142Block170Block178Value21).
    recoveredBlock142Block170Block178Value22 := recoveredLocal4.
    recoveredBlock142Block170Block178Value23 := recoveredBlock142Arg1.
    recoveredBlock142Block170Block178Value24 := (recoveredBlock142Block170Block178Value23) at: (2).
    recoveredBlock142Block170Block178Value25 := recoveredLocal1.
    recoveredBlock142Block170Block178Value26 := TruetypeFonttype.
    recoveredBlock142Block170Block178Value27 := (recoveredBlock142Block170Block178Value25) = (recoveredBlock142Block170Block178Value26).
    recoveredBlock142Block170Block178Value28 := (self) nameFromLogFont: (recoveredBlock142Block170Block178Value22) textMetric: (recoveredBlock142Block170Block178Value24) scalable: (recoveredBlock142Block170Block178Value27).
    recoveredLocal2 := recoveredBlock142Block170Block178Value28.
    recoveredBlock142Block170Block178Value29 := recoveredArg1.
    recoveredBlock142Block170Block178Value30 := recoveredLocal2.
    recoveredBlock142Block170Block178Value31 := Array.
    recoveredBlock142Block170Block178Value32 := recoveredLocal1.
    recoveredBlock142Block170Block178Value33 := RasterFonttype.
    recoveredBlock142Block170Block178Value34 := (recoveredBlock142Block170Block178Value32) ~= (recoveredBlock142Block170Block178Value33).
    recoveredBlock142Block170Block178Value35 := recoveredLocal4.
    recoveredBlock142Block170Block178Value36 := (recoveredBlock142Block170Block178Value31) with: (recoveredBlock142Block170Block178Value34) with: (recoveredBlock142Block170Block178Value35).
    recoveredBlock142Block170Block178Value37 := (recoveredBlock142Block170Block178Value29) at: (recoveredBlock142Block170Block178Value30) put: (recoveredBlock142Block170Block178Value36).
    recoveredBlock142Block170Block178Value37
].
    recoveredBlock142Block170Value1 := (#(0 255)) do: (recoveredBlock142Block170Value0).
    recoveredBlock142Block170Value1
].
    recoveredBlock142Value5 := (#(400 700)) do: (recoveredBlock142Value4).
    recoveredBlock142Value5
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"winsys.ic method 0x20046adc; bytecode file offset 0xc2d68"
!CgWinFontServer methodsFor: 'recovered'!
nameFromLogFont: recoveredArg1 textMetric: recoveredArg2 scalable: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) lfFaceName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) trimNull.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'default'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) species.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 80.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'microsoft'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) asLowercase.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) lfWeight.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := 500.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) > (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 'bold'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'medium'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) lfItalic.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := $r.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := $i.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := 'normal'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := #('' '' 'sans serif' '' 'script' 'decorated' '' '' '' '' '' '' '' '' '' '').
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := (recoveredStack4) lfPitchAndFamily.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack5 := -4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := (recoveredStack4) bitShift: (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := server.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolutionX.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := server.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolutionY.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) tmHeight.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) tmExternalLeading.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 7227.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) tmAveCharWidth.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := (recoveredStack3) lfPitchAndFamily.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack4 := 15.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAnd: (recoveredStack4).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack4 := FixedPitch.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := $m.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredPC := 306.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := $p.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) lfCharSet.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) lfOrientation.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredPC := 356.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := '.rotated'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := 360.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack3 := (recoveredStack3) lfOrientation.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack4 := 10.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack4 := AnsiCharset.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 374] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack3 := 'iso8859'.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredPC := 382.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack3 := 'microsoft'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack4 := AnsiCharset.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 398] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := '1'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredPC := 468.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack4 := OemCharset.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 412] ifFalse: [recoveredPC := 418].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := 'oem'.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredPC := 468.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack4 := SymbolCharset.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 426] ifFalse: [recoveredPC := 432].
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack3 := 'fontspecific'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredPC := 468.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack4 := ShiftjisCharset.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 440] ifFalse: [recoveredPC := 466].
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack3 := (recoveredStack3) asLowercase.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack4 := $@.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack3 ~~ recoveredStack4) ifTrue: [recoveredPC := 460] ifFalse: [recoveredPC := 454].
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := '@shiftjis'.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredPC := 462.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack3 := 'shiftjis'.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredPC := 468.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack3 := 'other'.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

