"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001df4; bytecode file offset 0x7e054"
!CgWinPrinterServer class methodsFor: 'recovered'!
printerScreenInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    PrinterScreenInfo := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000e540; bytecode file offset 0x8a70c"
!CgWinPrinterServer class methodsFor: 'recovered'!
printerScreenInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PrinterScreenInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            PrinterScreenInfo := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := PrinterScreenInfo.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200172b0; bytecode file offset 0x93480"
!CgWinPrinterServer class methodsFor: 'recovered'!
isValidServerName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allPrinterScreenInfos.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) concatenatedName.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) sameAs: (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 25].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"winsys.ic method 0x2002659c; bytecode file offset 0xa2780"
!CgWinPrinterServer class methodsFor: 'recovered'!
named: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EPRFHW'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) servers.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) servers.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) restart: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) servers.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20043e4c; bytecode file offset 0xc0064"
!CgWinPrinterServer class methodsFor: 'recovered'!
allPrinterScreenInfos
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 8192.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'PrinterPorts'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := recoveredLocal6.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProfileString: (recoveredStack2) lpszEntry: (recoveredStack3) lpszDefault: (recoveredStack4) lpszReturnBuffer: (recoveredStack5) cbReturnBuffer: (recoveredStack6).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCharacter.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) printerScreenInfo.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Local1 recoveredBlock84Local2 recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 recoveredBlock84Value4 recoveredBlock84Value5 recoveredBlock84Value6 recoveredBlock84Value7 recoveredBlock84Value8 recoveredBlock84Value9 recoveredBlock84Value10 recoveredBlock84Value11 recoveredBlock84Value12 recoveredBlock84Value13 recoveredBlock84Value14 recoveredBlock84Value15 |
    recoveredBlock84Value0 := OS.
    recoveredBlock84Value1 := recoveredBlock84Arg1.
    recoveredBlock84Value2 := recoveredLocal6.
    recoveredBlock84Value3 := recoveredLocal6.
    recoveredBlock84Value4 := (recoveredBlock84Value3) size.
    recoveredBlock84Value5 := (recoveredBlock84Value0) getProfileString: ('PrinterPorts') lpszEntry: (recoveredBlock84Value1) lpszDefault: ('') lpszReturnBuffer: (recoveredBlock84Value2) cbReturnBuffer: (recoveredBlock84Value4).
    recoveredLocal5 := recoveredBlock84Value5.
    recoveredBlock84Value6 := recoveredLocal6.
    recoveredBlock84Value7 := recoveredLocal5.
    recoveredBlock84Value8 := (recoveredBlock84Value6) copyFrom: (1) to: (recoveredBlock84Value7).
    recoveredBlock84Value9 := (recoveredBlock84Value8) subStrings: ($,).
    recoveredBlock84Local2 := recoveredBlock84Value9.
    recoveredBlock84Value10 := recoveredBlock84Local2.
    recoveredBlock84Value11 := (recoveredBlock84Value10) at: (1).
    recoveredLocal3 := recoveredBlock84Value11.
    recoveredBlock84Value12 := recoveredBlock84Local2.
    recoveredBlock84Value13 := (recoveredBlock84Value12) size.
    recoveredBlock84Value14 := [:recoveredBlock84Block150Arg1 | 
    | recoveredBlock84Block150Local1 recoveredBlock84Block150Local2 recoveredBlock84Block150Local3 recoveredBlock84Block150Local4 recoveredBlock84Block150Local5 recoveredBlock84Block150Stack0 recoveredBlock84Block150Stack1 recoveredBlock84Block150Stack2 recoveredBlock84Block150Stack3 recoveredBlock84Block150Stack4 recoveredBlock84Block150Stack5 recoveredBlock84Block150Stack6 recoveredBlock84Block150PC recoveredBlock84Block150Step recoveredBlock84Block150Done recoveredBlock84Block150Result |
    recoveredBlock84Block150Stack0 := nil.
    recoveredBlock84Block150PC := 156.
    recoveredBlock84Block150Done := false.
    [recoveredBlock84Block150Done not] whileTrue: [
        recoveredBlock84Block150Step := recoveredBlock84Block150PC.
        recoveredBlock84Block150Step = 156 ifTrue: [
            recoveredBlock84Block150Stack1 := recoveredBlock84Local2.
            recoveredBlock84Block150PC := 159.
        ].
        recoveredBlock84Block150Step = 159 ifTrue: [
            recoveredBlock84Block150Stack2 := recoveredBlock84Block150Arg1.
            recoveredBlock84Block150PC := 162.
        ].
        recoveredBlock84Block150Step = 162 ifTrue: [
            recoveredBlock84Block150Stack1 := (recoveredBlock84Block150Stack1) at: (recoveredBlock84Block150Stack2).
            recoveredBlock84Block150PC := 164.
        ].
        recoveredBlock84Block150Step = 164 ifTrue: [
            recoveredBlock84Block150Local5 := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150PC := 167.
        ].
        recoveredBlock84Block150Step = 167 ifTrue: [
            recoveredBlock84Block150Stack1 := String.
            recoveredBlock84Block150PC := 169.
        ].
        recoveredBlock84Block150Step = 169 ifTrue: [
            recoveredBlock84Block150Stack2 := recoveredBlock84Arg1.
            recoveredBlock84Block150PC := 172.
        ].
        recoveredBlock84Block150Step = 172 ifTrue: [
            recoveredBlock84Block150Stack2 := (recoveredBlock84Block150Stack2) size.
            recoveredBlock84Block150PC := 174.
        ].
        recoveredBlock84Block150Step = 174 ifTrue: [
            recoveredBlock84Block150Stack3 := recoveredLocal3.
            recoveredBlock84Block150PC := 177.
        ].
        recoveredBlock84Block150Step = 177 ifTrue: [
            recoveredBlock84Block150Stack3 := (recoveredBlock84Block150Stack3) size.
            recoveredBlock84Block150PC := 179.
        ].
        recoveredBlock84Block150Step = 179 ifTrue: [
            recoveredBlock84Block150Stack2 := (recoveredBlock84Block150Stack2) + (recoveredBlock84Block150Stack3).
            recoveredBlock84Block150PC := 180.
        ].
        recoveredBlock84Block150Step = 180 ifTrue: [
            recoveredBlock84Block150Stack3 := recoveredBlock84Block150Local5.
            recoveredBlock84Block150PC := 183.
        ].
        recoveredBlock84Block150Step = 183 ifTrue: [
            recoveredBlock84Block150Stack3 := (recoveredBlock84Block150Stack3) size.
            recoveredBlock84Block150PC := 185.
        ].
        recoveredBlock84Block150Step = 185 ifTrue: [
            recoveredBlock84Block150Stack2 := (recoveredBlock84Block150Stack2) + (recoveredBlock84Block150Stack3).
            recoveredBlock84Block150PC := 186.
        ].
        recoveredBlock84Block150Step = 186 ifTrue: [
            recoveredBlock84Block150Stack3 := 2.
            recoveredBlock84Block150PC := 188.
        ].
        recoveredBlock84Block150Step = 188 ifTrue: [
            recoveredBlock84Block150Stack2 := (recoveredBlock84Block150Stack2) + (recoveredBlock84Block150Stack3).
            recoveredBlock84Block150PC := 189.
        ].
        recoveredBlock84Block150Step = 189 ifTrue: [
            recoveredBlock84Block150Stack1 := (recoveredBlock84Block150Stack1) new: (recoveredBlock84Block150Stack2).
            recoveredBlock84Block150PC := 190.
        ].
        recoveredBlock84Block150Step = 190 ifTrue: [
            recoveredBlock84Block150Local4 := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150PC := 193.
        ].
        recoveredBlock84Block150Step = 193 ifTrue: [
            recoveredBlock84Block150Stack1 := recoveredBlock84Arg1.
            recoveredBlock84Block150PC := 196.
        ].
        recoveredBlock84Block150Step = 196 ifTrue: [
            recoveredBlock84Block150Stack1 := (recoveredBlock84Block150Stack1) size.
            recoveredBlock84Block150PC := 198.
        ].
        recoveredBlock84Block150Step = 198 ifTrue: [
            recoveredBlock84Block150Stack1 := (recoveredBlock84Block150Stack1) + (1).
            recoveredBlock84Block150PC := 199.
        ].
        recoveredBlock84Block150Step = 199 ifTrue: [
            recoveredBlock84Block150Local3 := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150PC := 202.
        ].
        recoveredBlock84Block150Step = 202 ifTrue: [
            recoveredBlock84Block150Stack1 := recoveredBlock84Arg1.
            recoveredBlock84Block150PC := 205.
        ].
        recoveredBlock84Block150Step = 205 ifTrue: [
            recoveredBlock84Block150Stack1 := (recoveredBlock84Block150Stack1) size.
            recoveredBlock84Block150PC := 207.
        ].
        recoveredBlock84Block150Step = 207 ifTrue: [
            recoveredBlock84Block150Stack2 := recoveredLocal3.
            recoveredBlock84Block150PC := 210.
        ].
        recoveredBlock84Block150Step = 210 ifTrue: [
            recoveredBlock84Block150Stack2 := (recoveredBlock84Block150Stack2) size.
            recoveredBlock84Block150PC := 212.
        ].
        recoveredBlock84Block150Step = 212 ifTrue: [
            recoveredBlock84Block150Stack1 := (recoveredBlock84Block150Stack1) + (recoveredBlock84Block150Stack2).
            recoveredBlock84Block150PC := 213.
        ].
        recoveredBlock84Block150Step = 213 ifTrue: [
            recoveredBlock84Block150Stack2 := 2.
            recoveredBlock84Block150PC := 215.
        ].
        recoveredBlock84Block150Step = 215 ifTrue: [
            recoveredBlock84Block150Stack1 := (recoveredBlock84Block150Stack1) + (recoveredBlock84Block150Stack2).
            recoveredBlock84Block150PC := 216.
        ].
        recoveredBlock84Block150Step = 216 ifTrue: [
            recoveredBlock84Block150Local2 := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150PC := 219.
        ].
        recoveredBlock84Block150Step = 219 ifTrue: [
            recoveredBlock84Block150Stack1 := recoveredBlock84Block150Local4.
            recoveredBlock84Block150PC := 222.
        ].
        recoveredBlock84Block150Step = 222 ifTrue: [
            recoveredBlock84Block150Stack2 := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150PC := 223.
        ].
        recoveredBlock84Block150Step = 223 ifTrue: [
            recoveredBlock84Block150Stack3 := 1.
            recoveredBlock84Block150PC := 225.
        ].
        recoveredBlock84Block150Step = 225 ifTrue: [
            recoveredBlock84Block150Stack4 := recoveredBlock84Arg1.
            recoveredBlock84Block150PC := 228.
        ].
        recoveredBlock84Block150Step = 228 ifTrue: [
            recoveredBlock84Block150Stack4 := (recoveredBlock84Block150Stack4) size.
            recoveredBlock84Block150PC := 230.
        ].
        recoveredBlock84Block150Step = 230 ifTrue: [
            recoveredBlock84Block150Stack5 := recoveredBlock84Arg1.
            recoveredBlock84Block150PC := 233.
        ].
        recoveredBlock84Block150Step = 233 ifTrue: [
            (recoveredBlock84Block150Stack2) replaceFrom: (recoveredBlock84Block150Stack3) to: (recoveredBlock84Block150Stack4) with: (recoveredBlock84Block150Stack5).
            recoveredBlock84Block150Stack2 := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150PC := 236.
        ].
        recoveredBlock84Block150Step = 236 ifTrue: [
            recoveredBlock84Block150Stack3 := recoveredBlock84Block150Local3.
            recoveredBlock84Block150PC := 239.
        ].
        recoveredBlock84Block150Step = 239 ifTrue: [
            recoveredBlock84Block150Stack4 := $,.
            recoveredBlock84Block150PC := 242.
        ].
        recoveredBlock84Block150Step = 242 ifTrue: [
            (recoveredBlock84Block150Stack2) at: (recoveredBlock84Block150Stack3) put: (recoveredBlock84Block150Stack4).
            recoveredBlock84Block150Stack2 := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150PC := 245.
        ].
        recoveredBlock84Block150Step = 245 ifTrue: [
            recoveredBlock84Block150Stack3 := recoveredBlock84Block150Local3.
            recoveredBlock84Block150PC := 248.
        ].
        recoveredBlock84Block150Step = 248 ifTrue: [
            recoveredBlock84Block150Stack3 := (recoveredBlock84Block150Stack3) + (1).
            recoveredBlock84Block150PC := 249.
        ].
        recoveredBlock84Block150Step = 249 ifTrue: [
            recoveredBlock84Block150Stack4 := recoveredBlock84Block150Local3.
            recoveredBlock84Block150PC := 252.
        ].
        recoveredBlock84Block150Step = 252 ifTrue: [
            recoveredBlock84Block150Stack5 := recoveredLocal3.
            recoveredBlock84Block150PC := 255.
        ].
        recoveredBlock84Block150Step = 255 ifTrue: [
            recoveredBlock84Block150Stack5 := (recoveredBlock84Block150Stack5) size.
            recoveredBlock84Block150PC := 257.
        ].
        recoveredBlock84Block150Step = 257 ifTrue: [
            recoveredBlock84Block150Stack4 := (recoveredBlock84Block150Stack4) + (recoveredBlock84Block150Stack5).
            recoveredBlock84Block150PC := 258.
        ].
        recoveredBlock84Block150Step = 258 ifTrue: [
            recoveredBlock84Block150Stack5 := recoveredLocal3.
            recoveredBlock84Block150PC := 261.
        ].
        recoveredBlock84Block150Step = 261 ifTrue: [
            (recoveredBlock84Block150Stack2) replaceFrom: (recoveredBlock84Block150Stack3) to: (recoveredBlock84Block150Stack4) with: (recoveredBlock84Block150Stack5).
            recoveredBlock84Block150Stack2 := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150PC := 264.
        ].
        recoveredBlock84Block150Step = 264 ifTrue: [
            recoveredBlock84Block150Stack3 := recoveredBlock84Block150Local2.
            recoveredBlock84Block150PC := 267.
        ].
        recoveredBlock84Block150Step = 267 ifTrue: [
            recoveredBlock84Block150Stack4 := $,.
            recoveredBlock84Block150PC := 270.
        ].
        recoveredBlock84Block150Step = 270 ifTrue: [
            (recoveredBlock84Block150Stack2) at: (recoveredBlock84Block150Stack3) put: (recoveredBlock84Block150Stack4).
            recoveredBlock84Block150PC := 272.
        ].
        recoveredBlock84Block150Step = 272 ifTrue: [
            recoveredBlock84Block150Stack2 := recoveredBlock84Block150Local2.
            recoveredBlock84Block150PC := 275.
        ].
        recoveredBlock84Block150Step = 275 ifTrue: [
            recoveredBlock84Block150Stack2 := (recoveredBlock84Block150Stack2) + (1).
            recoveredBlock84Block150PC := 276.
        ].
        recoveredBlock84Block150Step = 276 ifTrue: [
            recoveredBlock84Block150Stack3 := recoveredBlock84Block150Local2.
            recoveredBlock84Block150PC := 279.
        ].
        recoveredBlock84Block150Step = 279 ifTrue: [
            recoveredBlock84Block150Stack4 := recoveredBlock84Block150Local5.
            recoveredBlock84Block150PC := 282.
        ].
        recoveredBlock84Block150Step = 282 ifTrue: [
            recoveredBlock84Block150Stack4 := (recoveredBlock84Block150Stack4) size.
            recoveredBlock84Block150PC := 284.
        ].
        recoveredBlock84Block150Step = 284 ifTrue: [
            recoveredBlock84Block150Stack3 := (recoveredBlock84Block150Stack3) + (recoveredBlock84Block150Stack4).
            recoveredBlock84Block150PC := 285.
        ].
        recoveredBlock84Block150Step = 285 ifTrue: [
            recoveredBlock84Block150Stack4 := recoveredBlock84Block150Local5.
            recoveredBlock84Block150PC := 288.
        ].
        recoveredBlock84Block150Step = 288 ifTrue: [
            (recoveredBlock84Block150Stack1) replaceFrom: (recoveredBlock84Block150Stack2) to: (recoveredBlock84Block150Stack3) with: (recoveredBlock84Block150Stack4).
            recoveredBlock84Block150PC := 291.
        ].
        recoveredBlock84Block150Step = 291 ifTrue: [
            recoveredBlock84Block150Stack1 := recoveredLocal2.
            recoveredBlock84Block150PC := 294.
        ].
        recoveredBlock84Block150Step = 294 ifTrue: [
            recoveredBlock84Block150Stack2 := recoveredBlock84Block150Local4.
            recoveredBlock84Block150PC := 297.
        ].
        recoveredBlock84Block150Step = 297 ifTrue: [
            recoveredBlock84Block150Stack3 := [
    | recoveredBlock84Block150Block297Value0 recoveredBlock84Block150Block297Value1 recoveredBlock84Block150Block297Value2 recoveredBlock84Block150Block297Value3 recoveredBlock84Block150Block297Value4 |
    recoveredBlock84Block150Block297Value0 := CgPrinterScreenInfo.
    recoveredBlock84Block150Block297Value1 := recoveredLocal3.
    recoveredBlock84Block150Block297Value2 := recoveredBlock84Arg1.
    recoveredBlock84Block150Block297Value3 := recoveredBlock84Block150Local5.
    recoveredBlock84Block150Block297Value4 := (recoveredBlock84Block150Block297Value0) driverName: (recoveredBlock84Block150Block297Value1) deviceName: (recoveredBlock84Block150Block297Value2) outputMedium: (recoveredBlock84Block150Block297Value3).
    recoveredBlock84Block150Block297Value4
].
            recoveredBlock84Block150PC := 319.
        ].
        recoveredBlock84Block150Step = 319 ifTrue: [
            recoveredBlock84Block150Stack1 := (recoveredBlock84Block150Stack1) at: (recoveredBlock84Block150Stack2) ifAbsent: (recoveredBlock84Block150Stack3).
            recoveredBlock84Block150PC := 321.
        ].
        recoveredBlock84Block150Step = 321 ifTrue: [
            recoveredBlock84Block150Local1 := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150PC := 324.
        ].
        recoveredBlock84Block150Step = 324 ifTrue: [
            recoveredBlock84Block150Stack1 := nil.
            recoveredBlock84Block150PC := 325.
        ].
        recoveredBlock84Block150Step = 325 ifTrue: [
            recoveredBlock84Block150Stack2 := recoveredBlock84Block150Local1.
            recoveredBlock84Block150PC := 328.
        ].
        recoveredBlock84Block150Step = 328 ifTrue: [
            (recoveredBlock84Block150Stack2 == nil) ifTrue: [recoveredBlock84Block150PC := 344] ifFalse: [recoveredBlock84Block150PC := 332].
        ].
        recoveredBlock84Block150Step = 332 ifTrue: [
            recoveredBlock84Block150PC := 333.
        ].
        recoveredBlock84Block150Step = 333 ifTrue: [
            recoveredBlock84Block150Stack1 := recoveredLocal1.
            recoveredBlock84Block150PC := 336.
        ].
        recoveredBlock84Block150Step = 336 ifTrue: [
            recoveredBlock84Block150Stack2 := recoveredBlock84Block150Local4.
            recoveredBlock84Block150PC := 339.
        ].
        recoveredBlock84Block150Step = 339 ifTrue: [
            recoveredBlock84Block150Stack3 := recoveredBlock84Block150Local1.
            recoveredBlock84Block150PC := 342.
        ].
        recoveredBlock84Block150Step = 342 ifTrue: [
            recoveredBlock84Block150Stack1 := (recoveredBlock84Block150Stack1) at: (recoveredBlock84Block150Stack2) put: (recoveredBlock84Block150Stack3).
            recoveredBlock84Block150PC := 344.
        ].
        recoveredBlock84Block150Step = 344 ifTrue: [
            recoveredBlock84Block150Result := recoveredBlock84Block150Stack1.
            recoveredBlock84Block150Done := true.
        ].
    ].
    recoveredBlock84Block150Result
].
    recoveredBlock84Value15 := (2) to: (recoveredBlock84Value13) by: (3) do: (recoveredBlock84Value14).
    recoveredBlock84Value15
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0) printerScreenInfo: (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

