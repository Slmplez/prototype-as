"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006dab4; bytecode file offset 0x96a390"
!RBFileDialog methodsFor: 'recovered'!
activeFilter
    | recoveredValue0 |
    recoveredValue0 := activeFilter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200723a8; bytecode file offset 0x96ee04"
!RBFileDialog methodsFor: 'recovered'!
bitInvalidFileName
    ^1
! !

"ASDBase.ic method 0x200728e8; bytecode file offset 0x96f1c4"
!RBFileDialog methodsFor: 'recovered'!
bitAllowMultiSelect
    ^2
! !

"ASDBase.ic method 0x200ac824; bytecode file offset 0x9a90dc"
!RBFileDialog methodsFor: 'recovered'!
addFilter: recoveredArg1 description: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := filter.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c41c4; bytecode file offset 0x9c0bf0"
!RBFileDialog methodsFor: 'recovered'!
addActiveFilter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    activeFilter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ced18; bytecode file offset 0x9cb5dc"
!RBFileDialog methodsFor: 'recovered'!
setInvalidFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ced24; bytecode file offset 0x9cb5dc"
!RBFileDialog methodsFor: 'recovered'!
clearInvalidFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ced58; bytecode file offset 0x9cb610"
!RBFileDialog methodsFor: 'recovered'!
isInvalidFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ced74; bytecode file offset 0x9cb644"
!RBFileDialog methodsFor: 'recovered'!
clearAllowMultiSelect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ced8c; bytecode file offset 0x9cb644"
!RBFileDialog methodsFor: 'recovered'!
setAllowMultiSelect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cedb4; bytecode file offset 0x9cb678"
!RBFileDialog methodsFor: 'recovered'!
isAllowMultiSelect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20131d0c; bytecode file offset 0xa2e6a8"
!RBFileDialog methodsFor: 'recovered'!
allowMultiSelect: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) setAllowMultiSelect.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) clearAllowMultiSelect.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014068c; bytecode file offset 0xa3cf50"
!RBFileDialog methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    filter := recoveredValue1.
    state := 0.
    ^self
! !

"ASDBase.ic method 0x201f4174; bytecode file offset 0xaf0b10"
!RBFileDialog methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isInvalidFileName.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isInvalidFileName: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isAllowMultiSelect.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isAllowMultiSelect: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    ^self
! !

"ASDBase.ic method 0x2039c4d8; bytecode file offset 0xc98e14"
!RBFileDialog methodsFor: 'recovered'!
stateTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setInvalidFileName.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setInvalidFileName--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue4).
    (self) setAllowMultiSelect.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setAllowMultiSelect--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue7).
    (self) clearInvalidFileName.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------clearInvalidFileName--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue10).
    (self) clearAllowMultiSelect.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------clearAllowMultiSelect--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) contents.
    (recoveredValue15) edit.
    ^self
! !

"ASDBase.ic method 0x20641eb4; bytecode file offset 0xf3e87c"
!RBFileDialog methodsFor: 'recovered'!
open
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) handle.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := fileName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := filterPath.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFileTitle: (recoveredStack2) lpszTitle: (recoveredStack3) cbBuf: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 65535.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 256.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := label.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyToOSMemory.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := filter.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := activeFilter.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyAtValue: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 173] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := filter.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := activeFilter.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyAtValue: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := '('.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := activeFilter.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := activeFilter.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal18 := recoveredStack2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := activeFilter.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := filter.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := filter.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := activeFilter.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyAtValue: (recoveredStack3).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := filter.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := [:recoveredBlock175Arg1 | 
    | recoveredBlock175Value0 recoveredBlock175Value1 recoveredBlock175Value2 recoveredBlock175Value3 recoveredBlock175Value4 recoveredBlock175Value5 recoveredBlock175Value6 recoveredBlock175Value7 recoveredBlock175Value8 recoveredBlock175Value9 recoveredBlock175Value10 recoveredBlock175Value11 recoveredBlock175Value12 recoveredBlock175Value13 recoveredBlock175Value14 recoveredBlock175Value15 recoveredBlock175Value16 recoveredBlock175Value17 recoveredBlock175Value18 recoveredBlock175Value19 recoveredBlock175Value20 recoveredBlock175Value21 recoveredBlock175Value22 recoveredBlock175Value23 |
    recoveredBlock175Value0 := recoveredLocal18.
    recoveredBlock175Value1 := recoveredBlock175Arg1.
    recoveredBlock175Value2 := (recoveredBlock175Value0) , (recoveredBlock175Value1).
    recoveredBlock175Value3 := (recoveredBlock175Value2) , (' (').
    recoveredBlock175Value4 := filter.
    recoveredBlock175Value5 := recoveredBlock175Arg1.
    recoveredBlock175Value6 := (recoveredBlock175Value4) at: (recoveredBlock175Value5).
    recoveredBlock175Value7 := (recoveredBlock175Value3) , (recoveredBlock175Value6).
    recoveredBlock175Value8 := (recoveredBlock175Value7) , (')').
    recoveredBlock175Value9 := String.
    recoveredBlock175Value10 := (recoveredBlock175Value9) new: (1).
    recoveredBlock175Value11 := (recoveredBlock175Value8) , (recoveredBlock175Value10).
    recoveredBlock175Value12 := filter.
    recoveredBlock175Value13 := recoveredBlock175Arg1.
    recoveredBlock175Value14 := (recoveredBlock175Value12) at: (recoveredBlock175Value13).
    recoveredBlock175Value15 := (recoveredBlock175Value11) , (recoveredBlock175Value14).
    recoveredBlock175Value16 := String.
    recoveredBlock175Value17 := (recoveredBlock175Value16) new: (1).
    recoveredBlock175Value18 := (recoveredBlock175Value15) , (recoveredBlock175Value17).
    recoveredLocal18 := recoveredBlock175Value18.
    recoveredBlock175Value19 := recoveredLocal4.
    recoveredBlock175Value20 := filter.
    recoveredBlock175Value21 := recoveredBlock175Arg1.
    recoveredBlock175Value22 := (recoveredBlock175Value20) at: (recoveredBlock175Value21).
    recoveredBlock175Value23 := (recoveredBlock175Value19) add: (recoveredBlock175Value22).
    recoveredBlock175Value23
].
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) keysDo: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyToOSMemory.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) calloc: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) calloc: (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack4 := recoveredLocal14.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack4 := recoveredLocal12.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3) into: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) calloc: (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3) into: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := OfnHidereadonly.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := OfnNochangedir.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAllowMultiSelect.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 362].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := OfnAllowmultiselect.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := 524288.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := OSOpenfilename.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := OSOpenfilename.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedSize.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            (recoveredStack1) lStructSize: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack1) Flags: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack1) hwndOwner: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack1) lpstrTitle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) lpstrFile: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) nMaxFile: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack1) lpstrFileTitle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack1) nMaxFileTitle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            (recoveredStack1) lpstrInitialDir: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            (recoveredStack1) lpstrFilter: (recoveredStack2).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack0) nFilterIndex: (recoveredStack1).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := OSHcursor.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCursor.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := (recoveredStack0) save.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 450] ifFalse: [recoveredPC := 458].
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSaveFileName.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredPC := 463.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOpenFileName.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 472] ifFalse: [recoveredPC := 564].
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAllowMultiSelect.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 478] ifFalse: [recoveredPC := 492].
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyMultiStringFromOSMemory: (recoveredStack1).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredPC := 502.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFromOSMemory: (recoveredStack1).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack0 := (recoveredStack0) nFileOffset.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 518] ifFalse: [recoveredPC := 530].
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            (recoveredStack0) setInvalidFileName.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            (recoveredStack0) fullPath: (recoveredStack1).
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredPC := 561.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            (recoveredStack1) fullPath: (recoveredStack2).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack3 := (recoveredStack3) nFileOffset.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            (recoveredStack0) filterPath: (recoveredStack1).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredPC := 569.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack0) fullPath: (recoveredStack1).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            (recoveredStack0) setCursor.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            (recoveredStack0) updateDisplay.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack0 := (recoveredStack0) nFilterIndex.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 600] ifFalse: [recoveredPC := 625].
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 610] ifFalse: [recoveredPC := 625].
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := (recoveredStack1) nFilterIndex.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            activeFilter := recoveredStack0.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack0 := fullPath.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 672] ifFalse: [recoveredPC := 674].
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := 'Windows7'.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack1 := fullPath.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLongPathName: (recoveredStack1).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 708] ifFalse: [recoveredPC := 713].
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            fullPath := recoveredStack0.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack0 := fullPath.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

