"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000fd4; bytecode file offset 0x7d33c"
!CgPrinterScreen methodsFor: 'recovered'!
deviceName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) printerScreenInfo.
    recoveredValue1 := (recoveredValue0) deviceName.
    ^recoveredValue1
! !

"winsys.ic method 0x20001034; bytecode file offset 0x7d33c"
!CgPrinterScreen methodsFor: 'recovered'!
driverName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) printerScreenInfo.
    recoveredValue1 := (recoveredValue0) driverName.
    ^recoveredValue1
! !

"winsys.ic method 0x200010d4; bytecode file offset 0x7d33c"
!CgPrinterScreen methodsFor: 'recovered'!
outputMedium
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) printerScreenInfo.
    recoveredValue1 := (recoveredValue0) outputMedium.
    ^recoveredValue1
! !

"winsys.ic method 0x20002080; bytecode file offset 0x7e248"
!CgPrinterScreen methodsFor: 'recovered'!
defaultJobAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CgPrintJobAttributes.
    recoveredValue1 := (recoveredValue0) defaultForPrinterScreen: (self).
    ^recoveredValue1
! !

"winsys.ic method 0x20003bac; bytecode file offset 0x7fdc4"
!CgPrinterScreen methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"winsys.ic method 0x20003c20; bytecode file offset 0x7fe50"
!CgPrinterScreen methodsFor: 'recovered'!
driverVersion
    | recoveredValue0 |
    recoveredValue0 := driverVersion.
    ^recoveredValue0
! !

"winsys.ic method 0x20003ccc; bytecode file offset 0x7fec4"
!CgPrinterScreen methodsFor: 'recovered'!
printerScreenInfo
    | recoveredValue0 |
    recoveredValue0 := printerScreenInfo.
    ^recoveredValue0
! !

"winsys.ic method 0x2000486c; bytecode file offset 0x80a5c"
!CgPrinterScreen methodsFor: 'recovered'!
isPrinterScreen
    ^true
! !

"winsys.ic method 0x200080d4; bytecode file offset 0x842ec"
!CgPrinterScreen methodsFor: 'recovered'!
printerScreenInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    printerScreenInfo := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2001e3dc; bytecode file offset 0x9a5cc"
!CgPrinterScreen methodsFor: 'recovered'!
initializeRoot
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgPrinterWindow.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) screen: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            root := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) width.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) width: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) height.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) height: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultDepth.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) depth: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) shouldNotBeFreed.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := CommonGraphics.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageSupportLoaded.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := root.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) privateSetDefaultPalette.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20023428; bytecode file offset 0x9f61c"
!CgPrinterScreen methodsFor: 'recovered'!
outputDescription: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 128.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Network'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProfileString: (recoveredStack2) lpszEntry: (recoveredStack3) lpszDefault: (recoveredStack4) lpszReturnBuffer: (recoveredStack5) cbReturnBuffer: (recoveredStack6).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := NlsCatCPsWin.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'MxCPsWin2'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20026cfc; bytecode file offset 0xa2efc"
!CgPrinterScreen methodsFor: 'recovered'!
initializeInfo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := server.
    recoveredValue1 := (recoveredValue0) serverName.
    recoveredValue2 := (recoveredValue1) subStrings: ($,).
    recoveredLocal4 := recoveredValue2.
    recoveredValue3 := recoveredLocal4.
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredLocal4.
    recoveredValue6 := (recoveredValue5) at: (3).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := server.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) printerScreenInfo.
    recoveredValue10 := server.
    recoveredValue11 := (recoveredValue10) serverName.
    recoveredValue12 := (recoveredValue9) at: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := server.
    recoveredValue14 := (recoveredValue13) deviceContext.
    recoveredValue15 := Driverversion.
    recoveredValue16 := (recoveredValue14) getDeviceCaps: (recoveredValue15).
    driverVersion := recoveredValue16.
    recoveredValue17 := NlsCatCPsWin.
    recoveredValue18 := (recoveredValue17) residentMsg: ('MxCPsWin1').
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := (self) outputDescription: (recoveredValue20).
    recoveredValue22 := (recoveredValue18) bindWith: (recoveredValue19) with: (recoveredValue21).
    name := recoveredValue22.
    recoveredValue23 := recoveredLocal1.
    (self) printerScreenInfo: (recoveredValue23).
    super initializeInfo.
    ^self
! !

